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
                    
                    default: echo "no function avaliable";
                }
            }

            else{
                 //echo "No function argument";
                
            }

            
        }// end of function
        

        function updateTardyTime(){
            global $conn, $stmt;

            $courseNum = $_POST['courseID'];
            $section = $_POST['section'];
            $newTime = $_POST['newtime'];
            
            if( isset($courseNum) && isset($section)  && isset($newTime) ){
                $update = "UPDATE course_section
                           SET Time_Before_Tardy = '$newTime'
                           WHERE Class_ID = '$courseNum'  AND Section = '$section'";
               

                /*$stmt = $conn -> prepare($update);
                $stmt -> bind_param("sss", $newTime,$courseNum, $section);
                $stmt -> execute();
                $result = $stmt->get_result();*/

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
?>