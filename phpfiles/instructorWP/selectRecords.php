<?php
        $conn;
        $stmt;
        startSession();
        setConnection();
        
        if(isset($_POST['chosefunction'])){
            //echo "hello";
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
            $stmt -> close();
            $conn -> close();
        }

        function choseFunction(){
            if(isset($_POST['functionType'])){

                switch($_POST['functionType']){
                    case "rollcall": populateTableRollCall();
                                    break;

                    case "session": listClassSessions();
                                    break;
                    default:
                }
            }

            else{
                 //echo "No function argument";
                
            }

            
        }// end of function
        
    
        function populateTableRollCall(){
                
            global $conn, $stmt;

            $courseNum = $_POST['courseID'];
            $section = $_POST['section'];
            
            if( isset($courseNum) && isset($section) ){ 
                
                $select = "SELECT CONCAT(s.Fname, ' ', s.Lname) AS Student_Name, s.Sex, s.Senority
                            FROM student AS s
                            WHERE s.Std_ID IN(SELECT Std_ID 
                                                FROM enroll
                                                WHERE Class_ID = ? AND Section = ?)";
                
                $stmt = $conn -> prepare($select);
                $stmt -> bind_param("ss", $courseNum, $section);
                $stmt -> execute();
                $result = $stmt->get_result();
                
                echo "<tr> <th> Student Name </th> 
                            <th> Gender </th> 
                            <th> Senority </th> </tr>";
                
                while($row = $result->fetch_assoc()){
                        
                    echo "<tr> <td>" . $row['Student_Name'] . "</td>" .
                            "<td>" . $row['Sex'] . "</td>" .
                            "<td>" . $row['Senority'] . "</td> </tr>";
                        
                }//end of loop
                endConnection();
            }// end of if

            else{
                echo "An error has occured.";
            }
        }//end of function 


        function coursesInstructorTeaches(){
            //populates dropdown

            global $conn, $stmt;
            
            $number = $_SESSION['ins_id'];

            if(isset($number)){
                
                $select = "SELECT c.Class_ID, CONCAT(c.Dept, ' ', c.Cource_Number, ' ', cs.Section) AS Course
                            FROM course AS c 
                            INNER JOIN course_section AS cs ON c.Class_ID = cs.Class_ID
                            AND cs.Ins_ID = ?";

                $stmt = $conn -> prepare($select);
                $stmt -> bind_param("s", $number);
                $stmt -> execute();
                $result = $stmt->get_result(); // get the mysqli result

                echo "<option value='None'>" . 'None' . "</option>";
            
                while($row = $result->fetch_assoc()){
                    
                    echo "<option value='" .$row['Class_ID']. "'>" . $row['Course'] . "</option>";
                    
                }
            
                endConnection();
            }//end of if

            else{
                echo "Number was null";
            }

        }// end of function

        function listClassSessions(){
            global $conn, $stmt;

            $courseNum = $_POST['courseID'];
            $section = $_POST['section'];
            
            if( isset($courseNum) && isset($section) ){
                $select = "SELECT cs.Ses_date as Session_Date, cs.Start_time, cs.End_time, 
                cs.Valid as Valid_Session 
                FROM class_session as cs 
                WHERE cs.Class_ID = ? and cs.Section = ?";

                $stmt = $conn -> prepare($select);
                $stmt -> bind_param("ss", $courseNum, $section);
                $stmt -> execute();
                $result = $stmt->get_result();

                echo "<tr> <th> Session_Date </th> 
                            <th> Start_time </th> 
                            <th> End_time </th>
                            <th> Valid_Session </th> </tr>";

                while($row = $result->fetch_assoc()){
                    
                    echo "<tr> <td>" . $row['Session_Date'] . "</td>" .
                            "<td>" . $row['Start_time'] . "</td>" .
                            "<td>" . $row['End_time'] . "</td>". 
                            "<td>" . $row['Valid_Session'] . "</td> </tr>";
                    
                }// end of loop
                endConnection();
                //echo " <select id="course-selection" onchange="makeBtnVisible()">
                //<option value='" .$row['Class_ID']. "'>" . $row['Course'] . "</option>";

            }// end of if

            else{

            }

        }
?>