<?php
$host="localhost";
$user="root";
$pass="";
$dbase="mybookstore";
$conn=mysqli_connect($host,$user,$pass);
if(!$conn)
{
	echo "Couldn't connect to database! Pleas try again";
	exit;
}

   $db=mysqli_select_db($conn,$dbase);
if(!$conn)

	echo "Couldn't connect to database! Pleas try again";

?>
