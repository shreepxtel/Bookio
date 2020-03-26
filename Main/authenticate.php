<?php
include 'connection.php'; // this links to file including functions for Starting/Closing a connection with database
$conn = OpenConn(); // assigning our connection to the db to a variable

  $username = $_POST['uname']; //retrieving values posted from form
  $password = $_POST['psw'];
  $sql = "SELECT * FROM student WHERE student_id= '$username' AND student_password='$password'"; // sql to query database for matching login info
  $result = mysqli_query($conn, $sql); //running the qeury on the database
  $numRows = mysqli_num_rows($result); //checking the amount of matching rows

  if ($numRows == 1){ // if there is 1 matching row then user is logged in
    header('Location: homePage.html') ; //sends user to homepage
  }
  else{ //else user stays on the login page so that they can try again
    header('Location: loginPage.html'); //sends user to login page
  }

?>

