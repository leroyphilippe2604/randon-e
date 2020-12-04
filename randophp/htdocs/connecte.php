<?php
try
{
	// On se connecte à MySQL et de recupere une DB
	$pdo = new PDO('mysql:host=mysqldb;dbname=hiking;charset=utf8', 'root', 'root');
}
catch(Exception $e)
{
	// En cas d'erreur, on affiche un message et on arrête tout
        die('Erreur : '.$e->getMessage());
}


?>