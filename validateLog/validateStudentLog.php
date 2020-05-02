
<?php //Checks if user input is valid
    error_reporting(E_ALL);
    ini_set('display_errors', 1);
    date_default_timezone_set("America/New_York");

    $conn = "";
    $stmt = "";
    $studentNumber = "";
    
    $currentDate = ""; 
    $DOW = "";
    $currentTime = "";

    $error = array('number' =>'', 'empty' => '');// stores any input errors

    //setDate();
    session_start();
    validateStudent();

    function validateStudent(){
        global $conn, $stmt, $error, $studentNumber;
        setConnection();
        
        if(isset($_POST['StnNum'])){ // checks if input is null
            $studentNumber = '870'. $_POST['StnNum'];
            
            if(!preg_match("/870[0-9]{6}$/", $studentNumber)){ //checks if number matches this regex
                $error['number'] = "You have entered an invalid input";
                
            }

            else{ // connects to the server and checks if ID is in the server
                
                $select = "SELECT Std_ID FROM student WHERE Std_ID = ?";
        
                $stmt = $conn -> prepare($select);
                $stmt -> bind_param("s", $studentNumber);
                $stmt -> execute();
                $result = $stmt->get_result(); // get the mysqli result
                $user = $result->fetch_assoc(); // fetch data 
                    
                if(empty($user)){
                    $error['empty'] = "Could not find student record associated with this 870 number. 
                    Try again.";
                }

                else{
                    $_SESSION['stid'] = $user['Std_ID'];
                }
                

                if(array_filter($error)){ //checks if there are any errors

                }

                else{// if no errors then call function                   
                    checkLogInTime();
                }
            }// end of else
            
        }// end of POST check
    }// end of function

    function checkLogInTime(){
        global $currentDate, $DOW,$currentTime, $studentNumber, $stmt, $conn;
        $attenStatus = "";
        //echo $currentDate. " ". $currentDay. " ". $currentTime;
       $DOW = "Mon";
        $currentDate = "2020-01-13";
        //$currentTime = "10:50:00";*/
        //isset($_POST['StnDate']) && isset($_POST['StnDay']) && 
        if(isset($_POST['StnTime'])){
            //$DOW = $_POST['StnDay'];
            //$currentDate = $_POST['StnDate'];
            $currentTime = $_POST['StnTime'];
        }

        else{
            //echo "elements are empty";
            return;
        }
        
        Switch($DOW){
            case "Mon": $DOW = '%M%'; break;
            case "Tues": $DOW = '%T%'; break;
            case "Wed": $DOW = '%W%'; break;
            case "Thur": $DOW = '%R%'; break;
            case "Fri": $DOW = '%F%'; break;
            default: endConnection(); echo "No classes are schedule for ".$DOW; return;
        }
        

        $select = "SELECT cs.Class_ID, cs.Section, css.Start_time, css.End_time, cs.Time_Before_Tardy
                   FROM course_section AS cs 
                   INNER JOIN class_session AS css ON 
                   css.Class_ID = cs.Class_ID AND css.Section = cs.Section AND 
                   css.Ses_date = ? AND cs.DOW LIKE ? AND cs.Class_ID IN 
                   (SELECT e.Class_ID 
                    FROM enroll AS e
                    WHERE e.Std_ID = ?)";
       
        $stmt = $conn -> prepare($select);
        echo $conn->error;
        $stmt -> bind_param("sss", $currentDate,$DOW,$studentNumber);
        $stmt -> execute();
        $result = $stmt->get_result(); 

        while($row = $result->fetch_assoc()){

            if(!isset($row)){
                echo "row is empty";
                return;
            }

            $start = str_replace(':', '',$row['Start_time']);
            $end = str_replace(':', '',$row['End_time']);
            $stdTime = str_replace(':', '',$currentTime);
            
            /**if case assumes that 'absent' is the default atten status */
            if($stdTime >= $start && $stdTime < $end){
                
                $addedMinutes = substr($row['Time_Before_Tardy'], 3,2 );
                $beforeTardy = date("H:i:s",strtotime('+1 minutes +'. $addedMinutes.'minutes',
                                    strtotime($row['Start_time'])));


                $startWithAddedMinutes = str_replace(':', '',$beforeTardy);

                if($stdTime >= $startWithAddedMinutes){
                    echo " you are tardy for ".getCourseName($conn, $row['Class_ID']);
                    $attenStatus = "tardy";
                    /**this is where the student's atten status will change to tardy 
                     * write code:
                    */

                    updateStudentAttendence($conn, $row['Class_ID'], $row['Section'], $studentNumber,
                    $currentTime, $currentDate, $attenStatus);
                }

                else {
                    echo " you are present for ".getCourseName($conn, $row['Class_ID']);
                    $attenStatus = "present";
                    /**this is where the student's atten status will change to present 
                     * write code:
                    */

                    updateStudentAttendence($conn, $row['Class_ID'], $row['Section'], $studentNumber,
                    $currentTime, $currentDate, $attenStatus);
                }
                /**make absent a deafult atten status??? */
                endConnection();
                return;
                
            }// end of if

            else{continue;}

        } // end of loop
        echo "No class is currently in session";
        endConnection();
    }// end of function

    function updateStudentAttendence($conn, $courseId, $section, $StdId, $currentTime, 
                                     $currentDate, $attenStatus){

        $update = "UPDATE attendence AS a
                   SET a.Atten_status= '$attenStatus' , a.Log_Time= '$currentTime'
                   WHERE a.Class_ID= '$courseId' AND a.Section= '$section' 
                   AND a.Std_ID= '$StdId'
                   AND a.Log_date= '$currentDate'";

        if ($conn->query($update) === TRUE) {
            echo "\nRegistration successfully";
        } 
        else {
            echo "\nError inserting record: " . $conn->error;
        }
    }// end of function


    function getCourseName($conn, $courseId){
        $select = "SELECT course.Dept, course.Cource_Number
                   FROM course 
                   WHERE course.Class_ID= ?";

        $stmt = $conn -> prepare($select);
        echo $conn->error;
        $stmt -> bind_param("s", $courseId);
        $stmt -> execute();
        $result = $stmt->get_result(); 
        $row = $result->fetch_assoc();
        return $row['Dept']. " ". $row['Cource_Number'];
    }//end of function


    function setConnection(){
        global $conn;

        $host = "localhost";
        $dbUsername = "root";
        $dbPassword = "";
        $dbName = "attenrecords";
        $conn = new mysqli($host, $dbUsername, $dbPassword, $dbName);

        if(mysqli_connect_error()){ //checks if connection to server failed
            die('Connect Error('.mysqli_connect_errno().')'. mysqli_connect_errno());
        }
    }// end of function

    function endConnection(){
        global $conn, $stmt;
        $stmt -> close();
        $conn -> close();
    }// end of function

    function setDate(){
        global $currentDate, $DOW;
        $currentDate =  date("Y-m-d");
        $DOW =  date("D");
    }


?> 

