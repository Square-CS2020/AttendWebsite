<?php
$servername = "localhost";
$dbUsername = "root";
$dbPassword = "";
$dbname = "attenrecords";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "INSERT INTO student (std_ID, Fname, Lname, Sex, Senority)
VALUES ('333555', 'John', 'Doe', 'Male', 'Sophmore')";

if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>