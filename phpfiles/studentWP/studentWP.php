<?php session_start();?>

<!DOCTYPE html>
<html>

<head>
    <title>  </title>
    <link rel="stylesheet" type="text/css" href="stStyleSheet.css" />
    <style>
        h1 {
          text-align: center;
        }

        #attendanceRecord {
          font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
          border-collapse: collapse;
          text-align: center;
          margin-left: auto;
          margin-right: auto;
          width: 80%;
        }

        #attendanceRecord td, #attendanceRecord th {
          border: 1px solid #ddd;
          padding: 8px;
        }

        #attendanceRecord tr:nth-child(even){background-color: gainsboro;}
        #attendanceRecord tr:nth-child(odd){background-color: white;}

        #attendanceRecord tr:hover {background-color: grey;}

        #attendanceRecord th {
          padding-top: 12px;
          padding-bottom: 12px;
          background-color: black;
          color: white;
        }
    </style>
</head>

<body>
    <!--Gets the attendance records from the datbase for the student with the submitted ID. -->
    <div class = "banner"> </div>
    <h1 id="greet"> </h1>
    <h1 id="record"> </h1>

    <?php
      $num = $_SESSION['StnNum'];
      $conn = mysqli_connect('localhost', 'root', '','attenrecords');
      $sql = "SELECT * FROM attendence WHERE Std_ID=$num ORDER BY Log_date DESC, Log_time DESC";
      $sql2 = "SELECT Fname, Lname FROM student WHERE Std_ID=$num";
      $result = $conn->query($sql);
      $result2 = $conn->query($sql2);

      $stdName = "Attendance record for ";
      if($result2->num_rows > 0){
        $row2 = $result2->fetch_assoc();
        $stdName .= $row2["Fname"] . " " . $row2["Lname"] . ":";
      }
      else{
        $stdName = "Invalid Student ID Entered.";
      }

      if ($result->num_rows > 0) {
          // output data of each row
          $table = "";
          while($row = $result->fetch_assoc()) {
            if ($table == ""){
                $table .=
                "<div style='overflow-x:auto;'>
                <table id='attendanceRecord'>
                <tr>
                      <th>Class ID</th><th>Section</th><th>Std ID</th>
                      <th>Log Time</th><th>Log Date</th><th>Attendance Status</th>
                </tr>";
            }

              $table .= "<tr>
                            <td>".$row['Class_ID']."</td><td>".$row['Section'].
                            "</td><td>".$row['Std_ID']."</td>";
                            if($row['Atten_status'] == 'absent')
                              $table .= "<td>absent</td>";
                            else
                              $table .= "<td>".$row['Log_time']."</td>";
                            $table .= "<td>".$row['Log_date']."</td><td>".$row['Atten_status']."</td>
                          </tr>";

          }
          $table .= "</table> </div>";
          echo "$table";
      }
      else {
          echo "<script>
            document.getElementById('record').innerHTML = 'No records available.';
          </script>";
      }
    ?>

    <script>
      document.getElementById("greet").innerHTML = "<?php echo $stdName?>";
    </script>

</body>
</html>
