<?PHP
 //getting values posted from html login form into PHP file.
 $username = $POST['username'];
 $password = $POST['password'];

 //preventing sql injection attacks
 $username = stripcslashes($username);
 $password = stripcslashes($password);
 $username = mysql_real_escape_string($username);
 $password = mysql_real_escape_string($password);

 //connect to server and select database THIS WILL REQUIRE CHANGING AS MANY VALUES R PLACEHOLDERS
 mysql_connect("localhost", "root", "");
 mysql_select_db("databaseName")

 //checking the database for user
 $result = mysql_query("select * from student where student_id = '$username' and student_password = '$password'")
          or die("failed tom query database".mysql_error());
 $row = mysql_fetch_array($result);
 if ($row['student_id'] == $username && $row['student_password'] == $password){
   echo "Login Successful";
 }
 else{
   echo "Login Unsuccessful";
 }


?>
