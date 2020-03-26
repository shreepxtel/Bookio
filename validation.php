<!--This is similar to authentication.php as at the time of trying to get the database to work with the system.
We were trying two separate methods where both work. But put this on the side as only one was needed.-->

<?php

session_start();

$con = mysqli_connect('localhost', 'root', '');//Connects the system with the localhost.

mysqli_select_db($con, 'userregistration');

$name = $_POST['user'];
$pass = $_POST['password'];

$s = " select * from usertable where name = '$name' && password = '$pass'";//Selects the specific table to get the data from, from the database.

$result = mysqli_query($con, $s);

$num = mysqli_num_rows($result);

if($num == 1) {
  header('location:homePage2.php');//If user enters already existing user data. Then it takes them to the home page.
} else {
  header('location:login.php');//If the user enters data which does not exist. Then the user will still be on the login page.
}
?>
