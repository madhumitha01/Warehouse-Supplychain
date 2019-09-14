<!DOCTYPE html>
<html>
<head>
	<title></title>
<link rel="stylesheet" href="css/bootstrap.min.css">

</head>
<body background="https://png.pngtree.com/thumb_back/fw800/back_pic/02/51/36/235781aa9810fcd.jpg">

<?php
	$servername = "localhost";
	$username = "root";
	$password = "biryani"; //default password
	$db       = "supplychain";

	// Create connection. Note that we are using the OOP style here for PHP. $conn is now an object.
	$conn = new mysqli($servername, $username, $password,$db);
	   $query=$_POST['selectquery'];
  	// Check connection
	if ($conn->connect_error) 
{
		die("Connection failed: " . $conn->connect_error);
}
if($conn->multi_query($query))
{
	echo "<h3>".$query."</h3>";
	echo"<br><br>";
	echo"<table border=\"1\" class=\"table table-hover \">";
	$res=$conn->store_result();
	$field=$res->fetch_fields();
	echo"<tr class=\"danger\">";
	foreach($field as &$head)
	{
		echo"<th>".$head->name."</th>";
	}
	echo"</tr>";
	while($i=$res->fetch_row())
	{
		echo"<tr class=\"success\">";
		foreach ($i as &$j) 
	{
			echo"<td>".$j."</td>";
	}
		echo"</tr>";
	}
	echo "</table>";
}
else
{
	echo"inccorect query";
}
?> 
<script src="js/bootstrap.min.js"></script>
</body>
</html>
