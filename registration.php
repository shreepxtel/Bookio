<?php
include 'connection.php';
$conn = OpenConn();

$username = $_POST['uname'];
$password = $_POST['psw'];

$sql = "SELECT * FROM student WHERE student_id = '$username'"; //querying database to check if username already exists

$result = mysqli_query($conn, $sql);

$num = mysqli_num_rows($result);

if($num == 1) {
  echo " Username Already taken";
  header('Location: registration.html'); //sends user back to registration page to try again
} else {
  $sqlInsert = "INSERT INTO student(student_id, student_password) values ('$username', '$password')"; //inserting new user credentials into db
  mysqli_query($conn, $sqlInsert);
  echo" registration sucess";
  header('Location: index.html'); //sends user back to login page to use their new login credentials
}
?>
