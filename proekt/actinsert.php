<head>
	<title>Admin</title>
</head>
<?php
	include ("db.connection.php");
	$mycategory=$_POST["categoryname"];
	$query="INSERT INTO `categories` (`categoryid`, `name`) VALUES (NULL, '".$mycategory."')";

	$result=mysqli_query($conn,$query);

		echo "You have created a record!";
		echo "<br/>";
	include ("admin.php");

?>
