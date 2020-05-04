
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
        <li><a href="instructor.php">Home</a></li>
        <li><a href="">Email</a></li>
        <li><a class = "active" href="">Course Settings</a></li>
        <li><a href="">Rescources</a></li>
        <li><a href="">About</a></li>
    </ul> 
   

    <ul id="classlist">
       <!--- <li > <p class="click"> Welcome Back,  </p> </li>
        <li> <button  onclick="makeBtnGroupVisible()">Rollcall </button> </li> 
        <li> <button  onclick="makeBtnGroupVisible()"> class-session </button> </li> 
        <li> <button  onclick="makeBtnGroupVisible()"> Attendance </button> </li> -->
        <?php coursesInstructorTeaches(); ?>
        
      </ul>

      <p id="cid" style="display: none;" value=""></p>
    
    <div>
        
        <div id="task">
            
             <div id = "btn-group"> 
               <ul id="btn-list"> 

                 <li style="color:white"> Enter a new time for the tardy field(h:m:s) 
                     <input id="time" type="text" ></li> 
               </ul>
               <button type = "button" onclick="updateTardyTime(0)"> save changes</button>

               

               <!--- <ul id="tasklist">
                    <li> <button>Rollcall </button> </li>
                    <li> <button> call </button> </li>
                </ul> --> 
               </div> 

               <div style="color:white" id ="out"></div>

              <div id="table">
                
                
                <table id="data-display">

                </table>

             </div>
        </div> 
</div>

     
</body>
</html>