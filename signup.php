<?php
	include('config.php');
	extract($_POST);
	if(isset($save))
		{
		//for auto genrate Password
		/*
		$x=rand(1,99);
		$p= md5($x);
		$pass=substr($p,1,6);
		*/
		//for user_alias

$q=mysqli_query($conn,"select * from user where email='$e'");
	$r=mysqli_num_rows($q);
	if($r)
	{
	$err="<font color='red'>This email already exists choose diff email.</font>";
	}
	else
	{
		$pass=md5($p);
			mysqli_query($conn,"insert into user values('','$n','$e','$pass','$pro','$sem')") or die(mysqli_error($conn));

	$err="<font color='green'>Successfully Added.</font>";
	}
	}


?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Login</title>
        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.css" rel="stylesheet">
        <!-- Custom CSS -->
        <link href="css/style.css" rel="stylesheet">
          <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <!-- jQuery -->
        <script src="js/jquery.js"></script>
        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>
    </head>
<body>

		<div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-8">
		<form method="post" enctype="multipart/form-data">
		<table class="table table-bordered" style="margin-bottom:50px">
	<caption><h2 align="center">SignUp Here:</h2></caption>
	<Tr>
		<Td colspan="2"><?php echo @$err;?></Td>
	</Tr>

				<tr>
					<td> <b>Name:</b></td>
					<Td><input  type="text" name="n" class="form-control" required/></td>
				</tr>
				<tr>
					<td><b>Email</b> </td>
					<Td><input type="email" name="e" class="form-control" required/></td>
				</tr>

				<tr>
					<td><b> Password :</b></td>
					<Td><input type="password" name="p" class="form-control" required/></td>
				</tr>



				<tr>
					<td><b> Programme</b></td>
					<Td><select name="pro" class="form-control" required>


					<option>B.Tech</option>
          <option>M.Tech</option>
          <option>MCA</option>
          <option>BCA</option>

					</select>
					</td>
				</tr>

				<tr>
					<td><b>Semester</b></td>
					<Td><select name="sem" class="form-control" required>

					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
					<option>5</option>
					<option>6</option>
					<option>7</option>
					<option>8</option>
					</select>
					</td>
				</tr>



<Td colspan="2" align="center">
<input type="submit" value="Save" class="btn btn-success"  name="save"/>
<input type="reset" value="Reset" class="btn btn-success"/>

					</td>
				</tr>
			</table>
		</form>
		</div>
		<div class="col-sm-2"></div>
		</div>
	</body>
</html>
