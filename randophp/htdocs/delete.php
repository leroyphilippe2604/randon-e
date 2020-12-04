<?php
    require 'connecte.php';
    $id = $_GET['id'];
    $sql = $pdo -> prepare('DELETE FROM hiking WHERE id=?');
    $sql -> execute(array($id));
    header("location: read.php");
?>