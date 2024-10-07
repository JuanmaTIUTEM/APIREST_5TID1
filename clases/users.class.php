<?php 

require_once 'conexion/conexion.php';
require_once 'response.class.php';

class users extends conexion{

	private $nombre = "";
	private $apellidos = "";
	private $rfc = "";
	private $nickName = "";
	private $tipoUsuario = "";

	public function listaUsuarios($pagina = 1){ //listaUsuarios(2) $pagina = 1
		$inicio = 0;
		$cantidadItems = 5;
		if($pagina > 1 ){ // val = 2
			$inicio = ($cantidadItems * ($pagina -1));  //(5*(2-1))= 5
 			$cantidadItems = $cantidadItems * $pagina; //5*2 = 10 
		}
		$query = "SELECT * FROM userdata"; // limit $inicio,$cantidad;
		$datos = parent::getData($query);
		return ($datos);

	}
	public function buscarUsuarioNombre($userName){ 
		$query = "SELECT * FROM userdata where Name =  '$userName'"; 
		$datos = parent::getData($query);
		return $datos;
	}


	public function nuevoUsuario(){
		$query = "INSERT INTO personas (personName,personLastName,personRFC,bActive) VALUES ('". $this->nombre ."', '".$this->apellidos ."', '".$this->rfc ."', 1);"; 
		$id = parent::postDataId($query);
		if($id){
			$query2 = "INSERT INTO users (personId,user,pass,userType) VALUES ('". $id ."', '".$this->nickName ."', md5('".$this->nickName ."2022',".$this->tipoUsuario.");";
			$result = parent::postDataId($query2);
			return $result;
		}else{
			return 0;
		}
	}

	//generar funcion/metodo post

	public function postUser($json){
		//$_respuestas = new respuestas;
		$datos = json_decode($json,true);
		$this->nombre = $datos['nw_userName'];
		$this->apellidos = $datos['nw_apellidos'];
		$this->rfc = $datos['nw_rfc'];
		$this->nickName = $datos['nw_nickName'];
		$this->tipoUsuario = $datos['userType'];

		$result = $this->nuevoUsuario();

		if($result){
			$respuesta = $_respuestas->response;
			$respuesta["result"] = array(
			    "userId" => $result
			);
		}
	}


}

?>