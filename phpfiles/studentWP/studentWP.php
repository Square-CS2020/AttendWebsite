<?php session_start();?>

<!DOCTYPE html>
<html>

<head>
    <title>  </title>
    <link rel="stylesheet" type="text/css" href="stStyleSheet.css" />
</head>

<body>
    <!--Gets the attendance records from the datbase for the student with the submitted ID. -->
    <div class = "banner"> </div>
    <p id="greet"></p>
    <p id="record"></p>
    <?php
      $num = $_SESSION['StnNum'];
      $conn = mysqli_connect('localhost', 'root', '','attenrecords');
      $sql = "SELECT * FROM attendence WHERE Std_ID=$num";
      $sql2 = "SELECT Fname, Lname FROM student WHERE Std_ID=$num";
      $result = $conn->query($sql);
      $result2 = $conn->query($sql2);

      $stdName = "Attendance record for ";
      if($result2->num_rows > 0){
        $row2 = $result2->fetch_assoc();
        $stdName .= $row2["Fname"] . " " . $row2["Lname"] . ":";
      }
      else{
        $stdName = "Invalid Student ID Entered";
      }
      $attendance = "Class ID | Section |  Std ID  | Log Time |  Log Date  | Attendance Status"."<br>";

      if ($result->num_rows > 0) {
          // output data of each row
          while($row = $result->fetch_assoc()) {
            if($row["Atten_status"] == "absent"){
              $attendance .= $row["Class_ID"]. "   -    ". $row["Section"]. "   -   ". $row["Std_ID"]. " - ". $row["Log_time"]. " absent - ". $row["Log_date"].  " -  ".$row["Atten_status"]."<br>";
            }
            else{
              $attendance .= $row["Class_ID"]. "   -    ". $row["Section"]. "   -   ". $row["Std_ID"]. " - ". $row["Log_time"]. "  - ". $row["Log_date"].  "  - ".$row["Atten_status"]."<br>";
            }
          }
      } else {
          $attendance .= "0 results";
      }
    ?>
    <script>
      document.getElementById("record").innerHTML = "<?php echo $attendance?>";
      document.getElementById("greet").innerHTML = "<?php echo $stdName?>";
    </script>

</body>
</html>
