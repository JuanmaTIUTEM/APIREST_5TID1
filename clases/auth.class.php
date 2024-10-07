<?php 

require_once 'conexion/conexion.php';
require_once 'response.class.php';

class auth extends conexion{
	
	public function logIn($json){
		$_response = new response;
		$data = json_decode($json,true);
		if(!isset($data['user']) || !isset($data['psw'])){
			//error con los datos de entrada/campos
			return $_response->err_400();
		}else{
			//datos recibidos correctamente
			$user = $data['user'];
			$pass = $data['psw'];
			$pass = parent::encriptar($pass);
			$userData = $this->getUserData($user);
			if($userData[0]){
				if($userData[0]['pass'] ==  $pass){
					if($userData[0]['Estado'] == 1){
						//generar token.
						$userId = $userData[0]['userId'];
						$resp = $this->newToken($userId);
						if($resp){
							$dataUser = $this->getDataUser($userId);
							$result = $_response->response;
							$result["result"] = 
								array(
									"token" => $resp
								);
							$info = array(
								"response" => $result,
								"user" => $dataUser
							);
							return $info;
						}else{
							return $_response->err_504();
						}
					}
				}else{
					return $_response->err_401();
				}
			}

			/*Actividad:CREAR VARIABLES DE SESION*/
			//inicializar sesion
			//$datosUsuario = getDataUser($userId);

			return $_response->resp200();
		}

	}

	private function getUserData($user){
		$queryString = "SELECT * FROM allusers WHERE user = '$user'";
		$datos = parent::getData($queryString);
		if(isset($datos[0]['user']))
			return $datos;
		else
			return 0 ;

	}

	private function newToken($userId){
		$val = true;
		$token = bin2hex(openssl_random_pseudo_bytes(16,$val));
		$date = date("Y-m-d H:i");
		$estado = "Activo";
		$queryString = "INSERT INTO usuarios_token(userId,txtToken,bEstado,feDate)VALUES($userId,'$token','$estado','$date');";
		$validate = parent::postData($queryString);
		if($validate == 1)
			return $token;
		else
			return 0;
	}

	private function getDataUser($userId){
		$queryString = "SELECT * FROM userdata WHERE userId = '$userId'";
		$datos = parent::getData($queryString);
		if(isset($datos[0]['personId']))
			return $datos[0];
		else
			return 0 ;

	}
	

}



?>