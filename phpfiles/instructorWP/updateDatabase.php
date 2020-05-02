<?php   
        $conn;
        $stmt;
        startSession();
        setConnection();
        
        if(isset($_POST['chosefunction'])){
            choseFunction();
        }
        
        
        function startSession(){
            session_start();
        }// end of function

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
            //$stmt -> close();
            $conn -> close();
        }

        function choseFunction(){
            if(isset($_POST['functionType'])){

                switch($_POST['functionType']){
                    case "time": updateTardyTime();
                                     break;

                    case "session":  createNewSession();
                                     break;

                    case "updateSession": validateClassSession();
                                     break;
                    
                    default: echo "no function avaliable";
                }
            }

            else{
                 //echo "No function argument";
                
            }

            
        }// end of function
        

        function updateTardyTime(){
            global $conn;

            $courseNum = $_POST['courseID'];
            $section = $_POST['section'];
            $newTime = $_POST['newtime'];
            
            if( isset($courseNum) && isset($section)  && isset($newTime) ){
                $update = "UPDATE course_section
                           SET Time_Before_Tardy = '$newTime'
                           WHERE Class_ID = '$courseNum'  AND Section = '$section'";
            
                if ($conn->query($update) == TRUE) {
                    echo " Record updated successfully ";
                } else {
                    echo "Error updating record: " . $conn->error;
                }
                endConnection();
                
            }

            else{echo "values are is empty";}

        }//end of function

        function createNewSession(){
            global $conn;
            $courseNum = $_POST['courseID'];
            $section = $_POST['section'];
            $session = explode(",", $_POST["new-session"]);

            if( isset($session) ){
                $insert = "INSERT INTO class_session(Class_ID,Section,Ses_date,Start_time,End_time,Valid)
                           VALUES(".$courseNum. "," .$section . "," .date(Y-m-d). "," .$session[0].
                           ",". $session[1]. ",". $session[2].")";

                if ($conn->query($insert) === TRUE) {
                    echo "Record insertion successfully";
                } else {
                    echo "Error inserting record: " . $conn->error;
                }
                endConnection();
            }

            else{echo "session is empty";}

        }

        function notValidStudentAttendenceUpdate($courseNum, $section, $sessionDate, $conn ){
            /* updates atten of a student for a specific class
            UPDATE attendence AS a
            SET a.Atten_status = 'N/A'
            WHERE a.Class_ID = '11111' and a.Section = 'A' and a.Std_ID = 870444666
            and a.Log_date = '2020-01-13'; */

            $update = " UPDATE attendence AS a
                        SET a.Atten_status = 'N/A'
                        WHERE a.Class_ID=" .$courseNum. "and a.Section=".$section. 
                        "and a.Log_date=".$sessionDate;

            if ($conn->query($update) === TRUE) {
                        echo "Student Update successfully";
            } 

            else {
               echo "Error updating student's records: " . $conn->error;
            }
            endConnection();
            
        }//end of function

        function validateClassSession(){
            /* updates valid field in database
             UPDATE class_session AS cs
             SET cs.Valid = 'n'
             WHERE cs.Class_ID = '11111' and cs.Section = 'A' and cs.Ses_date = '2020-01-13'; */
            global $conn;
            $courseNum = $_POST['courseID'];
            $section = $_POST['section'];
            $sessionDate = $_POST['ses_date'];
            $valid = $_POST['valid'];
           

            if( isset($courseNum) && isset($section) && isset($sessionDate) && isset($valid) ) {
                
                if($valid == 'N'){
                    $update = "UPDATE class_session AS cs
                               SET cs.Valid = n 
                               WHERE cs.Class_ID=" .$courseNum. "and cs.Section=".$section."and 
                                    cs.Ses_date=".$sessionDate;

                    if ($conn->query($update) === TRUE) {
                        //echo "Update successfully ";
                        notValidStudentAttendenceUpdate($courseNum, $section, $sessionDate, $conn);
                    } 

                    else {
                        echo "<script type='text/javascript'>alert('$$conn->error');</script>";
                    }
                }

                else{
                   /* $update = "UPDATE class_session AS cs
                               SET cs.Valid = y 
                               WHERE cs.Class_ID=" .$courseNum. "and cs.Section=".$section."and 
                                    cs.Ses_date=".$sessionDate;

                    if ($conn->query($update) === TRUE) {
                        echo "Update successfully";
                        //notValidStudentAttendenceUpdate($courseNum, $section, $sessionDate, $conn);
                    } 

                    else {
                        echo "Error updating record: " . $conn->error;
                    }*/

                }
            }//end of if

            else{echo "something is empty.";}
        }// end of function

    
?>