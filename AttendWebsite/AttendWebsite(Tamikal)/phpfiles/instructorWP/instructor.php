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
                
                echo "<option value='" .$row['Class_ID']. "'>" . $row['Course'] . "</option>";
                
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
        function courseInfo(){
            var courseList = document.getElementById("course-selection");
            var courseID = "";
            var section = "";

            for(var i = 0; i < courseList.length; i++){

                if(courseList.options[i].selected){

                    if(courseList.options[i].value == "None"){
                        document.getElementById("out").innerHTML = "";
                        return;
                    }
                    
                    else{
                        courseID = courseList.options[i].value;
                        section = courseList.options[i].text;
                        section = section.charAt(section.length-1);
                    
                        loadRequest(courseID, section);      
                        
                        return;
                    } 
                }//end of else

                else{
                    continue;
                }
             
            }// end of for loop
        }// end of function
    
        
        function loadRequest(course, section){
            var xhttp = new XMLHttpRequest();
            var data = "courseID=" + course + "&section=" + section;
            
            xhttp.onreadystatechange = function(){
                if (xhttp.readyState === 4 && xhttp.status === 200) {
                    //document.getElementById("out").innerHTML = course + " " + section;

                    document.getElementById("out").innerHTML = xhttp.responseText;
                }
            };
            
            xhttp.open("POST", "populateTable.php", true);
            //xhttp.open("GET", "populateTable.php"+str, true);
            
            xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            //document.getElementById("out").innerHTML = course + " " + section;
            xhttp.send(data);
            //document.getElementById("out").innerHTML = xhttp.send(data);


        }
        
    </script>

</head>
<body>
    
    <div class="banner"> </div>
    
        <div class="contents" >

            <p>Choose Course</p>

          <form method="POST">

            <select id="course-selection" onchange="courseInfo()">
                <?php populateDropdown();//invoke php function ?>
            </select>

            <br>
            

            <table id = "out" style="width:100%"> </table>
           <!-- <div id = "out">  </div> -->


        </form>
            <br>

            
           
        </div>
</body>
</html>