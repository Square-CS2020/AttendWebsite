<?php session_start(); 

// connects to the server and checks if ID is in the server
            
    $host = "localhost";
    $dbUsername = "root";
    $dbPassword = "";
    $dbName = "attenrecords";
    $conn = new mysqli($host, $dbUsername, $dbPassword, $dbName);
    
    $number = '';
    if(mysqli_connect_error()){ //checks if connection to server failed
        die('Connect Error('.mysqli_connect_errno().')'. mysqli_connect_errno());
    }

    
    else{
        $number = $_SESSION['ins_id'];

        $select = "SELECT c.Class_ID, CONCAT(c.Dept, ' ', c.Cource_Number, ' ', cs.Section) AS Course
                    FROM course AS c 
                    INNER JOIN course_section AS cs ON c.Class_ID = cs.Class_ID
                    AND cs.Ins_ID = ?;"

        $stmt = $conn -> prepare($select);
        $stmt -> bind_param("s", $number);
        $stmt -> execute();
        $result = $stmt->get_result(); // get the mysqli result

        while($row = $result->fetch_assoc()){
            echo "<option value=\"$row['c.Class_ID']\">" . $row['Course'] . "</option>";
        }
         // fetch data 
        
        
       
        $stmt -> close();
        $conn -> close();
        
    }

?>