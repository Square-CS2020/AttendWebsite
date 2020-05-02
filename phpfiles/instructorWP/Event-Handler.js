
//Function displays the course's student roll call

function makeBtnGroupVisible(cid, section){
    

    document.getElementById("btn-group").style.visibility = "visible";
    document.getElementById("data-display").style.display = "none";
    document.getElementById("cid").value = cid;
    document.getElementById("cid").innerHTML = section.charAt(section.length-1);
    
}

function on() {
    document.getElementById("overlay").style.display = "block";
  }
  
  function off() {
    document.getElementById("overlay").style.display = "none";
  }


function updateStudentAndSessionRecord(seletedindex, optionsArray){
    document.getElementById("data-display").style.display = "block";
    var courseID = document.getElementById("cid").value;
    var section =  document.getElementById("cid").innerHTML;
    var sesDate = optionsArray[seletedindex].value;
    var valid = optionsArray[seletedindex].innerHTML;
    //alert(sesDate + " " + valid);

    var data = "courseID=" + courseID + "&section=" + section + "&ses_date="+  sesDate + 
    "&valid=" + valid + "&chosefunction=yes"+ "&functionType=updateSession";
    
    updateData(data);
}


function courseRollCallClassSession(functionCall){
    document.getElementById("data-display").style.display = "block";
    //var courseList = document.getElementById("classlist");
    var courseID = document.getElementById("cid").value;
    var section =  document.getElementById("cid").innerHTML;
        
    var data = "";
    if(functionCall == 0){
        data = "courseID=" + courseID + "&section=" + section +  "&chosefunction=yes"+ 
        "&functionType=rollcall";
    }

    else if(functionCall == 1){
        data = "courseID=" + courseID + "&section=" + section +  "&chosefunction=yes"+ 
        "&functionType=session";
    }

    else{
        data = "courseID=" + courseID + "&section=" + section +  "&chosefunction=yes"+ 
        "&functionType=atten";
    }

    getData(data);

}// end of function

function getData(data){
    var xhttp = new XMLHttpRequest();
        
    xhttp.onreadystatechange = function(){
        if (xhttp.readyState === 4 && xhttp.status === 200) {

           document.getElementById("data-display").innerHTML = xhttp.responseText;
        }
    };
        
    xhttp.open("POST", "selectRecords.php", true);
        
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send(data);
}

function updateTardyTime(functionCall){
    //document.getElementById("data-display").style.display = "block";
    
    var courseID = document.getElementById("cid").value;
    var section =  document.getElementById("cid").innerHTML;

    var data = "";

    if(functionCall == 0){
        var time = document.getElementById("time").value;
        //alert(time);
        data = "courseID=" + courseID + "&section=" + section + "&newtime=" + time +  "&chosefunction=yes"+ 
        "&functionType=time";
    }

    
    else{
        var session = document.getElementById("new-session").value;
        data = "courseID=" + courseID + "&section=" + section + "&new-session=" + session + 
        "&chosefunction=yes"+ "&functionType=session";
    }
    updateData(data);

}// end of function

function updateData(data){
    var xhttp = new XMLHttpRequest();
        
    xhttp.onreadystatechange = function(){
        if (xhttp.readyState === 4 && xhttp.status === 200) {

           document.getElementById("out").innerHTML = xhttp.responseText;
           alert("update complete");
        }
    };
        
    xhttp.open("POST", "updateDatabase.php", true);
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send(data);
}



