<head>
	<title>Home</title>
</head>
<?php
include ("header.php");
include ("function.php");
Allcategories();
$catid =$_GET['categoryid'];
echo "<div id=centercontent>";
BooksByCat($catid);
echo "</div>";
?>
