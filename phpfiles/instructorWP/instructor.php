
<?php 
    include 'selectRecords.php';
?>
 
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Instructor</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet-Intstructor.css" />

    <script src="Event-Handler.js"> </script>

</head>
<body>
    <div class="banner"> </div>
    
        <div class="contents" >

            <p>Choose Course</p>

          <form method="POST">

            <select id="course-selection" onchange="makeBtnVisible()">
                <?php coursesInstructorTeaches();//invoke php function ?>
            </select>

            <button id ="btn1" style="display: inline;" type="button" 
            onclick="courseRollCallClassSession(0)"> rollcall</button>

            <button id="btn2" style="display: inline;" type="button" 
            onclick="courseRollCallClassSession(1)">class-session</button>

            <br>
            <div style="padding-top: 150px;">
            <table id = "out" style="width:50%"> </table> </div>
           <!--<div id = "out">  </div>

           <div style="overflow-x:auto;">
                            <table>
                                ...
                            </table> </div> give table scroll bars --> 


        </form>
            <br>

            
           
        </div>
</body>
</html>