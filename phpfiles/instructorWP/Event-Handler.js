
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


function courseRollCallClassSession(functionCall){
    document.getElementById("data-display").style.display = "block";
    //var courseList = document.getElementById("classlist");
    var courseID = document.getElementById("cid").value;
    var section =  document.getElementById("cid").innerHTML;
    
   /* courseID = courseList.options[i].value;
                section = courseList.options[i].text;
                section = section.charAt(section.length-1);
                
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
                break;
            } 
        }//end of if

        else{
            continue;
        }
     
    }// end of for loop */
    
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



