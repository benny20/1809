<?php
    include 'connect.php';
    $qty = isset($_GET['qty'])? $_GET['qty'] :"";
    $id =  isset($_GET['id'])? $_GET['id'] : "";
    $smallimg =  isset($_GET['smallimg'])? $_GET['smallimg'] : "";
    $oldprice =  isset($_GET['oldprice'])? $_GET['oldprice'] : "";
    $price =  isset($_GET['price'])? $_GET['price'] : "";
    $content =  isset($_GET['content'])? $_GET['content'] : "";
    $size =  isset($_GET['size'])? $_GET['size'] : "";
    $cunzai = "SELECT * FROM car WHERE id=".$id;
    $_cunzai = $conn->query($cunzai); 
    $cunzai = $_cunzai->fetch_all(MYSQL_ASSOC);
    if($cunzai){
                foreach ($cunzai as  $item) {
                   $qty=$item["qty"];
                }  
           $xiugai = "update car set qty='".$qty."' where id=".$id;
           $ccc = $conn->query($xiugai); 
             if ($ccc) {
                echo "true";
            } else {
                echo "Error: " . $xiugai . "<br>" . $conn->error;
            }
            $xiugai1 = "update car set size='".$size."' where id=".$id;
           $sss = $conn->query($xiugai1); 
             if ($sss) {
                echo "true";
            } else {
                echo "Error: " . $xiugai1 . "<br>" . $conn->error;
            }
            }else{
             $sql = "INSERT INTO car (id, content, smallimg,oldprice,price,size,qty)
             VALUES ('".$id."', '".$content."', '".$smallimg."','".$oldprice."', '".$price."', '".$size."', '".$qty."')";
             $result = $conn->query($sql); 
             if ($result) {
                echo "true";
            } else {
                echo "Error: " . $sql . "<br>" . $conn->error;
            } 
            // $result->close();
    }