<?php
    include 'connect.php';
    $id =isset($_GET['id']) ? $_GET['id'] : '';
    $img =isset($_GET['img']) ? $_GET['img'] : '';
    $content =isset($_GET['content']) ? $_GET['content'] : '';
    $price =isset($_GET['price']) ? $_GET['price'] : '';
    $oldprice =isset($_GET['oldprice']) ? $_GET['oldprice'] : '';
    $page = isset($_GET['page']) ? $_GET['page'] : '1';
    $num = isset($_GET['num']) ? $_GET['num'] : '10';
    $sql="SELECT * FROM list LIMIT $page,$num";
    $res=$conn->query($sql);
    $arr = $res->fetch_all(MYSQLI_ASSOC);
    
    echo json_encode($arr,JSON_UNESCAPED_UNICODE);
    $res->close();
    $conn->close();
?>