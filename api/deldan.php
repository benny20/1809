<?php
    include 'connect.php';
    $id = isset($_GET['id'])? $_GET['id'] :"";
    if($id){
           $remove =" delete from car where id=".$id;
           $_remove = $conn->query($remove);
           
            echo json_encode($remove);
    }else{
             $cunzai = "SELECT * FROM car WHERE  id='".$id."'";
            $_cunzai = $conn->query($cunzai); 
            $cunzai = $_cunzai->fetch_all(MYSQL_ASSOC);
            echo json_encode($cunzai);
        }
   
?>