<?php

	function Allcategories()
	{
		echo "<head>";
		echo "<link rel='stylesheet' type='text/css' href='css/navigation.css'>";
		echo "</head>";

		include ("db.connection.php");
		$query="Select * from categories";
		$result=mysqli_query($conn, $query);

		echo "<div id='navcontainer'>";
				echo "<ul id='navlist'>";
					while($row=mysqli_fetch_array($result))
					{
						echo"<li>";

						echo "<a href='books.php?categoryid=";
						echo $row['categoryid'];
						echo "'>";
						echo $row['name'];

						echo "</a> </li>";;

					}
				echo "</ul>";
		echo "</div>";

	}

	function Allbooks()
	{
		include ("db.connection.php");
		$query="Select * from books order by date DESC limit 0,5";
		$result=mysqli_query($conn,$query);
		echo "<div id=centercontent>";
		echo "<table>";
			while($row=mysqli_fetch_array($result))
			{
				echo "<tr><td>";
				echo "ISBN: ".$row['isbn']."<br>";
				echo "Title: ".$row['title']."<br>";
				echo "Author: ".$row['author']."<br>";
				echo "</td><td>";

				echo " <img src='pictures/";
				echo $row['picture'];
				echo "'/>";

				echo "<br>";
				echo "Price: ".$row['price']."<br>";
				echo "</td></tr>";


			}
		echo "</table>";
		echo "</div>";
	}

	function BooksByCat($catid)
	{
		include ("db.connection.php");
		$query="Select * from books where categoryid=$catid ";
		$result=mysqli_query($conn,$query);
		echo "<table>";
			while($row=mysqli_fetch_array($result))
			{
				echo "<tr><td>";
				echo "ISBN: ".$row['isbn']."<br>";
				echo "Title: ".$row['title']."<br>";
				echo "Author: ".$row['author']."<br>";
				echo "</td><td>";

				echo " <img src='pictures/";
				echo $row['picture'];
				echo "'/>";

				echo "<br>";
				echo "Price: ".$row['price']."<br>";
				echo "</td></tr>";

			}
		echo "</table>";

	}
?>
