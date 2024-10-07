<?php

class conexion {

	private $server;
	private $user;
	private $password;
	private $database;
	private $port;
	private $conexion;


	function __construct(){
		$dataList = $this->conectionData();
		foreach ($dataList as $row => $value){
			$this->server = $value['server'];
			$this->user = $value['user'];
			$this->password = $value['password'];
			$this->database = $value['database'];
			$this->port = $value['port'];
		}
		$this->conexion = new mysqli($this->server,$this->user,$this->password,$this->database,$this->port);
		if($this->conexion->connect_errno){
			echo "Error de conexión!!";
			die();
		}
	}


	private function conectionData(){
		$dir = dirname(__FILE__);
		$json = file_get_contents($dir . "/config");
		return json_decode($json, true);
	}

	private function utf_8Conv($array){
		array_walk_recursive($array, function (&$item,$key){
			if(!mb_detect_encoding($item,'utf-8',true)){ // si no detecta caracter extraño
			    $item = utf8_encode($item); //codificarlo a UTF-8
			}
		});
		return $array;
	}

	// OBTENCIÓN DE DATOS
	public function getData($queryString){
		$result = $this->conexion->query($queryString);
		$resultData = array();
		foreach($result as $row){
			$resultData[] = $row;
		}
		return $this->utf_8Conv($resultData);

	}
	//INSERSION, MODIFICACION DE ELEMENTOS
	public function postData($queryString){
		$result = $this->conexion->query($queryString);
		return $this->conexion->affected_rows;
	}

	//INSERTAR UN ELEMENTO EN LA BD
	public function postDataId($queryString){
		$result = $this->conexion->query($queryString);
		$filas = $this->conexion->affected_rows;
		if($filas >= 1){ //si se genero una insersion o mas
		   return $this->conexion->insert_id; //imprime ultimo id insertado
		}else{
		   return 0;
		}
	}

	//public  cualquier usuario que tenga acceso a la clase puede acceder y ejecutar
	//privada solamente los elementos dentro de la clase puede ejecutar 

	//protected solamente el padre de la clase pueden ejecutar


	protected function encriptar($cad){
		return md5($cad);
	}


}

?>