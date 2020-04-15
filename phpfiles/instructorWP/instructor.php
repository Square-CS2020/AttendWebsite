
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
        <li><a href="">National Health Data</a></li>
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

     
      <!--- <div class="contents" >

            <p>Choose Course</p>

          <form method="POST">
            
            <ul>
                <li class="click"> Rollcall</li>
                <li> Attendence </li>
                <li> Class Session </li>
            </ul>
           <table class="navi">
              <tr> <td> <ul class ="options">
                    <li> Rollcall </li>
                    <li> Attendence </li>
                    <li> Class Session </li>
                    </ul> </td> 
              </tr>
           </table> 

          <select id="course-selection" onchange="makeBtnVisible()">
                //<?php coursesInstructorTeaches();//invoke php function ?>
            </select> 

            <button id ="btn1" style="display: inline;" type="button" 
            onclick="courseRollCallClassSession(0)"> rollcall</button>

            <button id="btn2" style="display: inline;" type="button" 
            onclick="courseRollCallClassSession(1)">class-session</button> 

            <br>

            <div style="padding-top: 150px;">
            <table id = "out" style="width:50%"> </table> </div>
           <div id = "out">  </div>

           <div style="overflow-x:auto;">
                            <table>
                                ...
                            </table> </div> give table scroll bars 


        </form>
            <br>

            
           
        </div> -->
</body>
</html>