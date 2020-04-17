<!DOCTYPE html>
<html>

<head> 
    <style> .red-text{ color : red;
                       display: inline;} 
    </style>
    <title>Log-In-Student</title>
    <link rel="stylesheet" type="text/css" href="FrontPageStyle/frontPageStyleSheet(Original).css" />

</head>

<body>

<div class="banner"> </div>

      <form action="logtime.php" method= "POST">

        <div class="contents" >

            <p style="display:inline">Enter last six digits of your 870 number: </p>
            <input type="text" name = "StnNum" required>
            <input type="submit" value="submit"> 
            <br/>

           <!-- <p style="display:inline">Enter Date(y:m:d): </p>
            <input type="text" name = "StnDate" required> 
            <br/>

            <p style="display:inline">Enter Day(Mon,Tues, Wed,..): </p>
            <input type="text" name = "StnDay" required>
            <br/> -->

            <p style="display:inline">Enter Time(h:m:s,00:00:00): </p>
            <input type="text" name = "StnTime" required>
            <br/>

            <div style="color:red"> <?php include 'validateLog/validateStudentLog.php'; 
                        echo "$error[number]". "$error[empty]";?>
            </div>
            
        </div>
    </form>
</body>
</html>
