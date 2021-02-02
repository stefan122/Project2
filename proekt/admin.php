<?php
	include ("header.php");
				echo "<head>";
					echo "<link rel='stylesheet' type='text/css' href='css/navigation.css'>";
					echo "</head>";

				include ("db.connection.php");
				$query="Select * from categories";
				$result=mysqli_query($conn, $query);

						echo "Welcome Admin";
						echo "<table border=1>";
							while($row=mysqli_fetch_array($result))
							{

								echo "<tr><td>";
								echo $row['name'];
								echo "</td><td>";

								echo "<a href=actdelete.php?categoryid=";
							    echo $row['categoryid'];
								echo "> Delete </a>";
								echo "</td><td>";

								echo "<a href=actedit.php?categoryid=";
								echo $row['categoryid'];
								echo "> Edit </a>";
								echo "</td></tr>";
							}
						echo "</table>";

						echo "</br>";
						echo "</br>";

				echo "<a href=insert.php> Insert  </a>";

?>
