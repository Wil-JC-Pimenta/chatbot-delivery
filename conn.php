<?php
$servidor = 'localhost';
$usuario = 'root';
$senha = '';
$banco = 'bot';
$conn = mysqli_connect($servidor,$usuario,$senha,$banco);

if(!$conn){

    echo " ERRO NA CONEXÃO";
} else{

   // echo " deu tudo certo na conexao";
}


?>