<?php
require_once 'connecte.php'
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Randonnées</title>
    <link rel="stylesheet" href="css/basics.css" media="screen" title="no title" charset="utf-8">
  </head>
  <body>
    <h1>Liste des randonnées</h1>
    <a href="create.php"> Ajoutez une randonnée</a>
    <table>
      <!-- Afficher la liste des randonnées -->
        <tr>
            <th> ID </th>
            <th> name </th>
            <th> difficulty </th>
            <th> distance </th>
            <th> duration </th>
            <th> height difference </th>
        </tr>
        <?php
        $sql = $pdo -> query('select * from hiking');
        while ($rows = $sql -> fetch()){
            echo 
            '<tr> <td> <a href="update.php?id=' . $rows['id'] . '">' . $rows['id'] . '</a></td>
            <td>' . $rows['name'] . '</td>
            <td>' . $rows['difficulty'] . '</td>
            <td>' . $rows['distance'] . '</td>
            <td>' . $rows['duration'] . '</td>
            <td>' . $rows['height_difference'] . '</td> 
            <td><a class="button" href="delete.php?id=' . $rows['id'] . '">DELETE</a></td>';
        }
        $sql -> closeCursor();
        ?>
    </table>
  </body>
</html>