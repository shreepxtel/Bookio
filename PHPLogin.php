<?php
session_start();

require('config.php'); //establishes connection with database

if (isset($_POST['submit'])){ //checks if form has been submitted

  $username = $_POST['uname']; //assiging form values to variables
  $password = $_POST['psw'];

  //preventing sql injection attacks
  $username = stripcslashes($username);
  $password = stripcslashes($password);
  $username = mysql_real_escape_string($username);
  $password = mysql_real_escape_string($password);

  //checking database for uname and psw. does this by counting results. either 1 or 0
  $query = "SELECT * FROM 'student' WHERE student_id='$username' AND student_password='$password'";
  $result = mysqli_query($link, $query);
  $count = mysqli_num_rows($result);

  if ($count == 1){ //checking there is a match in db
    header('Location: homePage.html'); //redirecting user to homepage after loggin in
  }
}


 ?>
