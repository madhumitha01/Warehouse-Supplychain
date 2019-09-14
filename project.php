


<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<style> 
input[type=text] {
   width: 700px;
    height: 55px;
    margin-left:200px;
    padding: 12px 20px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 30px;
    background-color: #f8f8f8;
    font-size: 16px;
    resize: none;
}
input[type="submit"]
{
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 16px 32px;
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;
    color:#fff;
    background-color: #4CAF50;
    border:5px solid #4CAF50;
    border-radius:30px;
}
button[type="clear"]
{
    background-color: #3b16b7;

    color:white;
    font-weight:bold;

    border: none;
    padding: 16px 32px;
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;
    color: #fff;
    background-color:#3b16b7;
    border:5px solid #3b16b7;
    border-radius:30px;
   
}
.button2:hover {
    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
   }
 h1 {
    color: blue;
    text-align: center;
    font-family:"Lucida Sans Unicode", "Lucida Grande", sans-serif;

    font-weight:bold;
    font-size: 300%;
    border-width: 5px;
    border-color: #fff;
    padding: 20px;
}
 h3 {
    color: white;
font-size: 150%;
    text-align: center;
    font-family:verdana;
    
}
 body
 { background-image:url("amnesia-wallpapers-25714-8453759.jpg");
 	background-size: cover;
 	background-attachment: fixed;

 }
.outer{
margin-left:300px;
}
.btn{
width:250px;
height:65px;
 font-size:20px;
font-weight:bold;
}
.btn1:hover{
  color: #3b16b7;
  background-color:#fff;
}
.btn2:hover{
  color: #4CAF50;
  background-color:#fff;
}
.btn-outer{
margin-left:300px;
}
ul{
background-color:#dadada;
width:300px;
text-align:center;
padding:0px;
}
ul li{
text-align:center;
padding:25px 40px;
list-style-type:none;
color:#000;
text-decoration:none;
text-decoration-style:none;
font-weight:bold;
}
a:link,a:visited,a:hover,a:active{
text-decoration:none;
color:#000;
font-family:Tw Cent;
}

.list{
background-color:#dadada;
width:300px;
height:101vh;
transition:all linear 0.5s;
margin-top:-477px;
}
#first{
padding:40px;
background-color:#333;
color:#888;
}
ul li:hover{
background-color:#b5b5b5;
}
.active{
margin-left:-200px;
}
#head1{
margin-bottom:150px;
font-size:15px;
padding:none;
background-color:none;
}
</style>
</head>
<body>
    <div class="outer">
        <div id="head1">
        <h1 class="text-primary text-center mainhead">WAREHOUSE SUPPLY CHAIN</h1>
        <h3>Made by: Madhumitha R</h3>
        </div>
    <form action = "runQuery.php" method="post" target = "_blank" id="myForm">
        <input type="text" placeholder="Enter your query here!" name="queryBox" />
    <br/>
    <br/>
     <div class="btn-outer">
        <button class = "btn1 btn btn-primary btstyle" type = "clear" onclick="myFunction()">Clear</button>
        <input class = "btn2 btn btn-primary btstyle" type = "submit"> 
     </div>
    </form>
    <br/><br/>
    </div>

<script>

function togg(){
   document.getElementById("l1").classList.toggle('active');
}
function myFunction() {
    document.getElementById("myForm").reset();
}
</script>

  <div class="list" id="l1">   
   
    <ul>
  <li id="first" onclick="togg()"><h2>MENU&nbsp&nbsp<i class="fa fa-bars" aria-hidden="true"></h2></i></li>
  
  <a href="select.php"><li>SELECT</li></a>
  
  <a href="insert.php"><li>INSERT</li></a>
   
  <a href="update2.php"><li>UPDATE</li></a>
  
  <a href="deletion.php"><li>DELETE</li></a>
  
    </ul>
 </div>

</body>
</html>