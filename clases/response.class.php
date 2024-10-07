<?php 

class response{

	public $response = [
		'status' => "ok",
		"result" => array()
	];

	public function resp200(){
		$this->response['status'] = "OK";
		$this->response['result'] = array(
			'statusId' => "200",
			'msgStatus' => "Acceso correcto!"
		);
		return $this->response;
	}

	public function err_400(){
		$this->response['status'] = "ERROR";
		$this->response['result'] = array(
			'errorId' => "400",
			'msgError' => "Datos enviados incompletos o con formato incorrecto"
		);
		return $this->response;
	}

	public function err_401(){
		$this->response['status'] = "ERROR";
		$this->response['result'] = array(
			'errorId' => "401",
			'msgError' => "Es necesario autenticar para obtener la respuesta solicitada"
		);
		return $this->response;
	}

	public function err_405(){
		$this->response['status'] = "ERROR";
		$this->response['result'] = array(
			'errorId' => "405",
			'msgError' => "El método solicitado es conocido por el servidor pero ha sido deshabilitado y no puede ser utilizado"
		);
		return $this->response;
	}

	public function err_500(){
		$this->response['status'] = "ERROR";
		$this->response['result'] = array(
			'errorId' => "500",
			'msgError' => "El servidor ha encontrado una situación que no sabe cómo manejarla."
		);
		return $this->response;
	}

	public function err_504(){
		$this->response['status'] = "ERROR";
		$this->response['result'] = array(
			'errorId' => "504",
			'msgError' => "El servidor no puede obtener una respuesta a tiempo, error de insersion de datos."
		);
		return $this->response;
	}

}
?>