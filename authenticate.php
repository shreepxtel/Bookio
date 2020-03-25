<?php
include 'connection.php';
$conn = OpenConn();

  $username = $_POST['uname'];
  $password = $_POST['psw'];
  $sql = "SELECT * FROM student WHERE student_id= '$username' AND student_password='$password'";
  $result = mysqli_query($conn, $sql);
  $numRows = mysqli_num_rows($result);

  if ($numRows == 1){
    header('Location: homePage.html') ;
  }
  else{
    header('Location: index.html');
  }

?>
