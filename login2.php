<!--This is the second version of the login page as at the end me and Jack decided to combine the two pages to make one which is under the name of loginPage.html.-->
<html>
<head>
    <title> User Login And Registration </title>
    <link rel="stylesheet" type="text/css" href="login.css">
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</head>
<body>
<!--This is the section which we took from my part to include in loginPage.html along with the css link above known as login.css
We thought this to look better design wise and more useful as it covers login and register on the same page. The lines we took start
from line 12 to 43-->
  <div class="container">
    <div class="login-box">
    <div class="row">
      <div class="col-md-6 login-left">
        <h2> Login Here </h2>
        <form action="validation.php" method="post">
          <div class="form-group">
            <label> Username </label>
            <input type="text" name="user" class="form-control" required>
          </div>
          <div class="form-group">
            <label> Password </label>
            <input type="password" name="password" class="form-control" required>
          </div>
            <button type="submit" class="btn btn-primary">Login</button>
        </form>
  </div>

  <div class="col-md-6 login-right">
    <h2> Register Here </h2>
    <form action="registration.php" method="post">
      <div class="form-group">
        <label> Username </label>
        <input type="text" name="user" class="form-control" required>
      </div>
      <div class="form-group">
        <label> Password </label>
        <input type="password" name="password" class="form-control" required>
      </div>
        <button type="submit" class="btn btn-primary">Register</button>
    </form>
</div>

</div>

  </div>
</body>
</html>
