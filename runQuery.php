<!DOCTYPE html>
<html>
<head>

	<title></title>
<link rel="stylesheet" href="css/bootstrap.min.css">

</head>
<body background="https://png.pngtree.com/thumb_back/fw800/back_pic/02/51/36/235781aa9810fcd.jpg">

<?php
//We need the connect to database function.


//Get a connection to the database. The way we are calling it recycles already existing connections.
	$servername = "localhost";
	$username = "root";
	$password = "biryani"; //default password
	$db       = "supplychain";

	// Create connection. Note that we are using the OOP style here for PHP. $conn is now an object.
	$conn = new mysqli($servername, $username, $password,$db);
  	// Check connection
	if ($conn->connect_error) 
{
		die("Connection failed: " . $conn->connect_error);
}

$query = $_POST["queryBox"];





if ($conn->multi_query($query)) {
	echo "<style>" . "table, th, td {" . "border: 1px solid black;" . "border-collapse: collapse;" . "th, td {" . 
		"padding: 15px;" . "}" . "</style>";
	do {
		echo "<h3>".$query."</h3>";
		echo"<br><br>";
		echo "<table border=\"1\" class=\"table table-hover \">"; //Open an html table
		if ($result = $conn->store_result()) {
			//Fetch all of the fields (corresponds to "columns") objects as an array
			$fields = $result->fetch_fields();
			echo "<tr class=\"danger\">"; //Begin creating a row for the column headers
			//Iterate over the fields array. 
			foreach ($fields as &$field){
		
				echo"<th>".$field->name."</th>";

				//echo "<th>" . $field->name . " (" . $fieldtype. ")</th>";
			}
			echo "</tr>"; 

			//Print out the actual table data. Fetch each table row.
			while ($row = $result->fetch_row()) {
				echo "<tr class=\"success\">"; //Begin creating a row for table data as opposed to header.
				foreach ($row as &$rowData){
					echo "<td>" . $rowData ."</td>";
				}
				echo "</tr>"; //Finished a row
			}
			$result->free(); 
		}
		echo "</table>"; //Close the html table	
		/* print divider */
		if ($conn->more_results()) {
			echo "<br /> <br />"; //Print new lines after this query result
		}
		else{
			break; //Done looping
		}
	} while ($conn -> next_result());
}
else {//An error occurred
	die("Error running your query."  . $conn->error);		
}
?>
<script src="js/bootstrap.min.js"></script>
</body>
</html>
