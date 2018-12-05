<?php
    include 'connect.php';
     $removecar= isset($_GET['removecar'])? $_GET['removecar'] :"";
    if($removecar=="yes"){
            $remove =' delete from car ';
           $_remove = $conn->query($remove);
           echo "true";
        }
    
   
?>