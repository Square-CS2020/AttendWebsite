
//Function displays the course's student roll call

function makeBtnVisible(){
    document.getElementById('btn1').setAttribute('style', 'display: inline');
    document.getElementById('btn2').setAttribute('style', 'display: inline');
}


function courseRollCallClassSession(functionCall){
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
                break;
            } 
        }//end of if

        else{
            continue;
        }
     
    }// end of for loop

    if(functionCall == 0){
        var xhttp = new XMLHttpRequest();
        var data = "courseID=" + courseID + "&section=" + section +  "&chosefunction=yes"+ 
        "&functionType=rollcall";
        
        xhttp.onreadystatechange = function(){
            if (xhttp.readyState === 4 && xhttp.status === 200) {

                document.getElementById("out").innerHTML = xhttp.responseText;
            }
        };
        
        xhttp.open("POST", "selectRecords.php", true);
        
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhttp.send(data);
    }

    else{
        var xhttp = new XMLHttpRequest();
        var data = "courseID=" + courseID + "&section=" + section +  "&chosefunction=yes"+ 
        "&functionType=session";
        
        xhttp.onreadystatechange = function(){
            if (xhttp.readyState === 4 && xhttp.status === 200) {

                document.getElementById("out").innerHTML = xhttp.responseText;
            }
        };
        
        xhttp.open("POST", "selectRecords.php", true);
        
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhttp.send(data);
    }

}// end of function

function getClassSessions(){
    
}


