<?php session_start(); 

    function populateDropdown(){
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
                        AND cs.Ins_ID = ?";

            $stmt = $conn -> prepare($select);
            $stmt -> bind_param("s", $number);
            $stmt -> execute();
            $result = $stmt->get_result(); // get the mysqli result

            echo "<option value='None'>" . 'None' . "</option>";
           
            while($row = $result->fetch_assoc()){
                
                echo "<option value='{$row['c.Class_ID']}'>" . $row['Course'] . "</option>";
                //echo $row['c.Class_ID'];
            }
         
            $stmt -> close();
            $conn -> close();
        
        }

    }// end of function

?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Instructor</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet-Intstructor.css" />

    <script>
        function courceInfo(){
            var courceList = document.getElementById("course-selection");

            for(var i = 0; i < courceList.options.length){
                if(courceList.options[i].selected)
                    document.getElementById.innerHTML = courceList.options[i].value;
                    break;
            }
            
        }
    </script>

</head>
<body>
    
    <div class="banner"></div>
    
        <div class="contents" >

            <p>Choose Course</p>
          <form method="POST">

            <select id="course-selection" onchange="courceInfo()">
                <?php populateDropdown();//invoke php function ?>
            </select>

            <br>

            <textarea id = "out"> </textarea>


        </form>
            <br>

            
           <!---- <button >
                Review Attendance</button>
           
            
            <button >
                Review Documents</button> -->
        </div>
</body>
</html>