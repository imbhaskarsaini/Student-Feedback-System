<?php
	include('../config.php');
	session_start();
	extract($_POST);
	if(isset($login))
	{
$que=mysqli_query($conn,"select user and pass from admin where user='$email' and pass='$pass'");
		$row=mysqli_num_rows($que);
		if($row)
			{
				$_SESSION['user']=$email;
				header('location:dashboard.php');
			}
		else
			{
				$err="<font color='red'>Wrong Email or Password !</font>";
			}
	}
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Login</title>
        <!-- Bootstrap Core CSS -->
        <link href="../css/bootstrap.css" rel="stylesheet">
        <!-- Custom CSS -->
        <link href="../css/style.css" rel="stylesheet">
          <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <!-- jQuery -->
        <script src="../js/jquery.js"></script>
        <!-- Bootstrap Core JavaScript -->
        <script src="../js/bootstrap.min.js"></script>
    </head>

    <body style="padding-top: 50px;">
        <!-- Header -->
        <div class="navbar navbar-inverse navbar-fixed-top pushkar">
            <div class="container ">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="../index.php" style="color:white;font-family:"Segoe UI";">Student FeedBack</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="../about.php"><span class="glyphicon glyphicon-book"></span> About</a></li>
                        <li><a href="../signup.php"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                        <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-log-in"></span> Login</a>
        <ul class="dropdown-menu">

          <li><a href="../Student.php">Student</a></li>
      <li><a href="../faculty.php">Faculty</a></li>
          <li><a href="../admin.php">Admin</a></li>
        </ul>
      </li>
                    </ul>
                </div>
            </div>
        </div>
        <br><br><br><br>
        <div id="content">
            <div class="container-fluid decor_bg r" id="login-panel">
                <div class="row">
                    <div class="col-md-4 col-md-offset-4">
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                <h4>ADMIN LOGIN</h4>
                            </div>
                            <div class="panel-body">
                                <form method="POST">
                                    <div class="form-group">
                                        <input type="email" class="form-control"  placeholder="Email" name="email" required>
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control" placeholder="Password" name="pass" required>
                                    </div>
                                    <button type="submit" name="login" value="Login" class="btn btn-success" style="background-color:#164E12">Login</button><br><br>
                                </form><br/>
                            </div>
                            <div class="panel-footer"><p>Don't have an account? <a href="../signup.php" style="color:#164E12">Register</a></p></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

<footer class="pushkar">
    <div class="container ">
        <center>
            <h5>Copyright &copy; Bhaskar. All Rights Reserved  |  Contact Us: +91 90000 00000</h5>
        </center>
    </div>
</footer>
  </body>
</html>
