<?php
include 'connection.php'; //this links to file including functions for starting/closing conenction to database
$conn = OpenConn(); //assigning our connection to the db to a variable

$username = $_POST['uname']; //retrieving values posted from form
$password = $_POST['psw'];

$sql = "SELECT * FROM student WHERE student_id = '$username'"; //sql query to check database if username already exists

$result = mysqli_query($conn, $sql); //running the query on database

$num = mysqli_num_rows($result); //getting a value for number of matching rows back

if($num == 1) { //if the username is already taken then num rows 1
  echo " Username Already taken";
  header('Location: registration.html'); //sends user back to registration page to try again
} else {
  $sqlInsert = "INSERT INTO student(student_id, student_password) values ('$username', '$password')"; //inserting new user credentials into db
  mysqli_query($conn, $sqlInsert);
  echo" registration sucess";
  header('Location: loginPage.html'); //sends user back to login page to use their new login credentials
}
?>
