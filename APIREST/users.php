<?php 

require_once '../clases/users.class.php';
require_once '../clases/response.class.php';

$_user = new users;
$_respuestas = new response;

if($_SERVER['REQUEST_METHOD'] == "POST"){
    print_r($_POST);
    $postData = $_POST;

    $dataArray = $_user->postUser(json_encode($postData));

    if($dataArray){
        header("Location:/5TID1/APIREST_5TID1/views/users.php");
    }else{
        return $_respuestas->err_500();
    }
}elseif($_SERVER['REQUEST_METHOD'] == "GET"){
    print_r($_GET);
    
}else{
    echo "Método no permitido";

}
?>