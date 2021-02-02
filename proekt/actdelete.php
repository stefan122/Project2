<head>
	<title>Admin</title>
</head>
<?php
	include ("db.connection.php");
	$myid=$_GET["categoryid"];
	$query="Delete from categories where categoryid=".$myid;

	$result=mysqli_query($conn,$query);

		echo "You have deleted a record!";
		echo "<br/>";
	include ("admin.php");

?>
