<head>
	<title>Admin</title>
</head>
<?php
include_once ("db.connection.php");

$username=$_POST['username'];
$password=$_POST['password'];

$query="select * from admin where user='$username' and password='$password'";
$result=mysqli_query($conn,$query);
if(mysqli_num_rows($result)==1)
{
	include("admin.php");
}
else
{
	echo "Wrong username or password";
	include("login.php");
}
?>
