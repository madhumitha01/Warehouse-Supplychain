<?php
$q = null;
if (!empty($_POST['deletequery'])) {
    $q = $_POST['deletequery'];
}
if(!empty($q))
{
$con=mysqli_connect('localhost','root','biryani');
if ($con->connect_error) {
    die("Connection failed: " . $conn->connect_error);
           }

mysqli_select_db($con,'supplychain');

mysqli_query($con,"$q");
mysqli_close($con);
}
?>
<html>
<head>
</head>
<style> 
input[type=text] {
   width: 700px;
    height: 55px;
    padding: 12px 20px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    background-color: #f8f8f8;
    font-size: 16px;
    resize: none;
}
input[type="submit"]
{
    background-color: #4CAF50;
    color:#000;
    font-weight:bold;
    width:120px;
    height:55px;
    border: none;
    padding: 16px 32px;
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;
}
.button2:hover {
    box-shadow: 5px 5px 5px 5 rgba(0,0,0,0.24);
   }
   body
 { background-image:url("shot01_1080p.jpg");
 	background-size: cover;
        background-repeat:no-repeat;
 	background-attachment: fixed;

 }
.outer{
margin-left:15vw;
margin-top:100px;
top:100px;
padding:50px;
}
.textfield{
color:#000;
font-weight:bold;
}
.heading h5{
color:#fff;
font-size:72px;
font-family:'Tw Cent MT';
left:300px;
padding-left:400px;
padding-top:100px;
padding-right:100px;
}

</style>
</head>
<body>
  <div class="heading">
 <h5>Delete Commands</h5>
  </div>
 <div class="outer">
	<form method="post">
	<input type="text" placeholder="Enter a query" name="deletequery" />
	<input type="submit" class="button2" value="INSERT">
    </form>
   </body>
</html>

