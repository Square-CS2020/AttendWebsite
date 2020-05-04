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
                    case "rollcall": classRollCall();
                                     break;

                    case "session":  listClassSessions();
                                     break;
                    case "atten":    listAttendence();
                                     break;
                    default:
                }
            }

            else{
                 //echo "No function argument";
                
            }

            
        }// end of function
        
    
        function classRollCall(){
                
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
            
            global $conn, $stmt;
            
            $studentNumber = $_SESSION['ins_id'];

            if(isset($studentNumber)){
                
                $select = "SELECT c.Class_ID, CONCAT(c.Dept, ' ', c.Cource_Number, ' ', cs.Section) AS Course
                            FROM course AS c 
                            INNER JOIN course_section AS cs ON c.Class_ID = cs.Class_ID
                            AND cs.Ins_ID = ?";

                $stmt = $conn -> prepare($select);
                $stmt -> bind_param("s", $studentNumber);
                $stmt -> execute();
                $result = $stmt->get_result(); // get the mysqli result

            
                while($row = $result->fetch_assoc()){
                    
                    echo " <li> <button onclick='makeBtnGroupVisible(this.value, this.innerHTML)' 
                            value='" .$row['Class_ID']. "'>" . $row['Course'] . 
                            "</button> <li>";
                    
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
                $dropdown = "";

                echo "<tr> <td> <div id=options> From <input id= stdate type=text> </input>
                            To  <input id= endate type=text> </input> </td> </div>
                     </tr>"; 


                echo "<tr> <th> Session_Date </th> 
                            <th> Start_time </th> 
                            <th> End_time </th>
                            <th> Valid_Session </th> </tr>";

                while($row = $result->fetch_assoc()){
                
                    echo "<tr> <td>" . $row['Session_Date'] . "</td>" .
                            "<td>" . $row['Start_time'] . "</td>" .
                            "<td>" . $row['End_time'] . "</td>";
                    
                    $dropdown =  "<select>";
                    
                    if($row['Valid_Session'] == 'y'){
                        $dropdown .= "<option value=". $row['Session_Date'] . ">Y</option>
                                     <option value=". $row['Session_Date'] . ">N</option>
                                    </select>";
                    }

                    else{
                        $dropdown .= "<option value=". $row['Session_Date']. ">N</option>
                                     <option value=". $row['Session_Date']. ">Y</option>
                                    </select>";
                    }
                    echo "<td>" . $dropdown . "</td> </tr>";
                    
                }// end of loop
                endConnection();
               
            }// end of if

            else{

            }

        }// end of function

        
        function listAttendence(){
            global $conn, $stmt;

            $courseNum = $_POST['courseID'];
            $section = $_POST['section'];
            
            if( isset($courseNum) && isset($section) ){

                $select = "SELECT CONCAT(s.Fname,' ', s.Lname) as Student, 
                a.Log_time, a.Log_date, a.Atten_status, a.Std_ID
                FROM attendence as a 
                INNER JOIN student as s on a.Std_ID = s.Std_ID 
                and a.Class_ID = ? and a.Section = ?";

                $stmt = $conn -> prepare($select);
                $stmt -> bind_param("ss", $courseNum, $section);
                $stmt -> execute();
                $result = $stmt->get_result();
                $dropdown = "";

                echo "<tr> <th> Student </th> 
                            <th> Logged_Time </th> 
                            <th> Date </th>
                            <th> Attendance_Status </th> </tr>";

                while($row = $result->fetch_assoc()){

                    echo "<tr>  <td>"  . $row['Student'] . "</td>" .
                                "<td>" . $row['Log_time'] . "</td>" .
                                "<td>" . $row['Log_date'] . "</td>";
                            
                    //optgroup
                    if($row['Atten_status'] == 'tardy'){
                        $dropdown = "<select> 
                                        <option value= tardy> Tardy </option>
                                        <option value= present> Present </option>
                                         <option value= absent> Absent </option>
                                    </select>";
                    }

                    else if($row['Atten_status'] == 'absent'){
                        $dropdown = "<select> 
                                        <option value= absent> Absent </option>
                                        <option value= tardy> Tardy </option>
                                         <option value= present> Present </option>
                                    </select>";
                    }

                    else{
                        $dropdown = "<select> 
                                        <option value= Present > Present </option>
                                        <option value= absent> Absent </option>
                                         <option value= tardy> Tardy </option>
                                    </select>";
                    }

                    echo "<td>" . $dropdown . "</td> </tr>";
                }// end of loop
                endConnection();
            }// end of if

            else{
                
            }
        }
?>