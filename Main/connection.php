<?php

  function OpenConn() //creating a function for opening connection to db
  {
    $dbhost = "127.0.0.1"; //this is the db server (localhost)
    $dbuser = "root"; //this is the db username
    $dbpass = ""; //db password (there isnt one)
    $dbname = "bookio"; //name of database so we know which one to connect to

    $conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname); //assigning our connection to a variable

    return $conn;//returning the variable so function can be used
  }

  function CloseConn($conn) //creating a function for closing connection with db
  {
    $conn -> close(); //closing connection 
  }

 ?>
