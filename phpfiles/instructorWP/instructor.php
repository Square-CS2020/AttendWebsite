
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
    
    <div class="banner"></div>
    <div id="overlay">
      <div id="popup">text</div>
    </div>
    
    <ul class="navi">
        <li><a class="active" href="">Home</a></li>
        <li><a href="">Email</a></li>
        <li><a href="course-settings.php">Course Settings</a></li>
        <li><a href="">Rescources</a></li>
        <li><a href="">About</a></li>
    </ul> 
   

    <ul id="classlist">
        <?php coursesInstructorTeaches(); ?>
        
      </ul>

      <p id="cid" style="display: none;" value=""></p>
    
    <div>
        
     <!---- <ul id="classlist">
        <li > <p class="click"> Rollcall </p> </li>
        <li> <p>Class Session </p>  </li>
        <li>  <p> Attendance </p> </li>
      </ul> -->

        <div id="task">
            
             <div id = "btn-group"> 
               <ul id="btn-list"> 
                 <li> <button onclick="courseRollCallClassSession(0)">Rollcall </button> </li> 
                 <li> <button onclick="courseRollCallClassSession(1)"> class-session </button> </li> 
                 <li> <button onclick="courseRollCallClassSession(2)"> Attendance </button> </li> 
               </ul>

               <!--- <ul id="tasklist">
                    <li> <button>Rollcall </button> </li>
                    <li> <button> call </button> </li>
                </ul> --> 
              </div> 

              <div id="table">
                
                
                <table id="data-display">

                </table>

              </div>
        </div> 
</div>
</body>
</html>