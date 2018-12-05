<?php
    include 'connect.php';
    $onep = isset($_GET['oneprice']) ? $_GET['oneprice'] : '100';
    $twop = isset($_GET['twoprice']) ? $_GET['twoprice'] : '200';
    $sql="SELECT * from list WHERE price BETWEEN '$onep' and '$twop'";
    $res=$conn->query($sql);
    $arr = $res->fetch_all(MYSQLI_ASSOC);
    
    echo json_encode($arr,JSON_UNESCAPED_UNICODE);
    // $res->close();
    $conn->close();
?>