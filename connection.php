<?php

  function OpenConn()
  {
    $dbhost = "127.0.0.1";
    $dbuser = "root";
    $dbpass = "";
    $dbname = "bookio";

    $conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);

    return $conn;
  }

  function CloseConn($conn)
  {
    $conn -> close();
  }

 ?>
