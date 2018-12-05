<?php
    include 'connect.php';
    $mima = isset($_GET['mima'])? $_GET['mima'] : "";
    $name = isset($_GET['name'])? $_GET['name'] : "";
     $sql = "insert into sign (name,mima) values ('".$name . "','".$mima. "')";
    $res = $conn->query($sql);
     // echo $res;
    if($res){
        echo "cheng";
    }else{
        echo "not";
    }
    $conn->close();
?>