<?php
   include 'connect.php';
    $id =isset($_GET['id']) ? $_GET['id'] : '';
    $userPic =isset($_GET['userPic']) ? $_GET['userPic'] : '';
    $username =isset($_GET['username']) ? $_GET['username'] : '';
    $img =isset($_GET['img']) ? $_GET['img'] : '';
    $content =isset($_GET['content']) ? $_GET['content'] : '';
    $show =isset($_GET['show']) ? $_GET['show'] : '';
    $page = isset($_GET['page']) ? $_GET['page'] : '1';
    $num = isset($_GET['num']) ? $_GET['num'] : '10';
    $sql="SELECT * FROM shouye LIMIT $page,$num";
    $res=$conn->query($sql);
    $arr = $res->fetch_all(MYSQLI_ASSOC);
    
    echo json_encode($arr,JSON_UNESCAPED_UNICODE);
    $res->close();
    $conn->close();
?> 