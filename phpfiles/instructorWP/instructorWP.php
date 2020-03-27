<?php 
    if(mysqli_connect_error()){ //checks if connection to server failed
        die('Connect Error('.mysqli_connect_errno().')'. mysqli_connect_errno());
    }

    else{
        $select = "SELECT Ins_ID FROM instructor WHERE Ins_ID = ?";

        $stmt = $conn -> prepare($select);
        $stmt -> bind_param("s", $number);
        $stmt -> execute();
        $result = $stmt->get_result(); // get the mysqli result
        $user = $result->fetch_assoc(); // fetch data 
        
        if(empty($user)){
            $error['empty'] = "Could not find record associated with this number. Try again(enter a digit from[0-9]).";
        }

        else{
        $_SESSION['id'] = $user['Ins_ID'];
        $stmt -> close();
        $conn -> close();
        }
    }

    if(array_filter($error)){ //checks if there are any errors

    }

    else{// if no errors then redirect to page index
        $error['empty'] = "sucess";
        //header('Location: instructorWP/instructorWP.php');
    }

?>