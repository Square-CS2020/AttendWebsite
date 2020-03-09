<?php
        session_start();
        $courseNum = '';
        $section = '';

        if(isset($_POST['courseID'] ) && isset($_POST['section'] ) ){ 
            
            $courseNum = $_POST['courseID'];
            $section = $_POST['section'];
            
            $host = "localhost";
            $dbUsername = "root";
            $dbPassword = "";
            $dbName = "attenrecords";
            $conn = new mysqli($host, $dbUsername, $dbPassword, $dbName);


            if(mysqli_connect_error()){ //checks if connection to server failed
                die('Connect Error('.mysqli_connect_errno().')'. mysqli_connect_errno());
            }

            else{
                $select = "SELECT CONCAT(s.Fname, ' ', s.Lname) AS Student_Name, s.Sex, s.Senority
                        FROM student AS s
                        WHERE s.Std_ID IN(SELECT Std_ID 
                                            FROM enroll
                                            WHERE Class_ID = '?' AND Section = '?')";
            
                $stmt = $conn -> prepare($select);
                $stmt -> bind_param("ss", $course, $section);
                $stmt -> execute();

                echo "<table> <tr> 
                        <th> Student Name </th> 
                        <th> Gender </th> 
                        <th> Senority </th> 
                        </tr>";
                
                while($row = $result->fetch_assoc()){
                    
                    echo "<tr> <td>" . $row['Student_Name'] . "</td>" .
                            "<td>" . $row['Sex'] . "</td>" .
                            "<td>" . $row['Senority'] . "</td> </tr>";
                    
                }//end of loop
                echo "</table>";

            }// end of else
        }// end of if
        

    /*function populateTable($courseID, $course){
            $host = "localhost";
            $dbUsername = "root";
            $dbPassword = "";
            $dbName = "attenrecords";
            $conn = new mysqli($host, $dbUsername, $dbPassword, $dbName);
            
            if(mysqli_connect_error()){ //checks if connection to server failed
                die('Connect Error('.mysqli_connect_errno().')'. mysqli_connect_errno());
            }

            else{
                $select = "SELECT CONCAT(s.Fname, ' ', s.Lname) AS Student_Name, s.Sex, s.Senority
                        FROM student AS s
                        WHERE s.Std_ID IN(SELECT Std_ID 
                                            FROM enroll
                                            WHERE Class_ID = '?' AND Section = '?')";
            
                $stmt = $conn -> prepare($select);
                $stmt -> bind_param("ss", $courseID, substr($course, -1));
                $stmt -> execute();

                echo "<tr> <th> Student Name </th> 
                        <th> Gender </th> 
                        <th> Senority </th> </tr>";
                
                while($row = $result->fetch_assoc()){
                    
                    echo "<tr> <td>" . $row['Student_Name'] . "</td>" .
                            "<td>" . $row['Sex'] . "</td>" .
                            "<td>" . $row['Senority'] . "</td> </tr>";
                    
                }//end of loop

        }// end of else
    }//end of function */

?>