<?php 
	
	require_once "clases/conexion/conexion.php";

	$con = new conexion;


	/*$query = "SELECT * FROM userdata";
	echo "<br><br><br><br><br>";
	print_r($con->getData($query));


	$query2 = "INSERT INTO `users` (`userId`, `personId`, `user`, `pass`, `userType`, `bActive`) VALUES (null, '3', 'EKISD', 'EXIS123', '1', '1');";
	echo "<br><br><h3>Con postData<hr></h3>";
	print_r($con->postData($query2));


	$query3 = "INSERT INTO `users` (`userId`, `personId`, `user`, `pass`, `userType`, `bActive`) VALUES (null, '4', 'XD', 'exit123', '4', '0');";
		echo "<br><br><h3>Con postDataId <hr></h3>";

	print_r($con->postDataId($query3));*/

	
?>
<style type="text/css">
	#params{
		width: 50%;
		margin-left: 25%;
		padding-top: 5%;
	}
	#buttons{
		padding-top: 10px;
		text-align: center;
	}
</style>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
	<!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
	<title>API REST 4TID1</title>
</head>
<body>
	<div  id="tittle_1">	
		<center><h1>Prueba 1: API REST <hr></h1></center>
	</div>
	<div id="login">
        
		<form action="auth.php" method="POST">  
			<div id="params">
				<div class="input-group">
				    <span class="input-group-text">Usuario</span>
				    <input type="text" class="form-control" placeholder="Usuario" name="user" id="user">
				</div>
				<br>
				<div class="input-group">
				    <span class="input-group-text">Contraseña</span>
				    <input type="password" class="form-control" placeholder="Contraseña" name="psw" id="psw">
				</div>
			</div>
			<div id="buttons">
				<button type="submit" class="btn btn-success">Log In</button>
			</div>
		</form>
	</div>
</body>
</html>



