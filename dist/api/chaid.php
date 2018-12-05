<?php
    include 'connect.php';
    $currentId = isset($_GET['currentId']) ? $_GET['currentId'] : null;
    $sql = "select * from list";

    // // 执行sql语句
    $result = $conn->query($sql);
    $data='';
    $arr = $result->fetch_all(MYSQLI_ASSOC);
    // var_dump($arr);
    for($i=0;$i<count($arr);$i++){
        if($arr[$i]["id"]===$currentId){

            $data=$arr[$i];  
        }
    }
    // var_dump($arr);
     echo json_encode($data,JSON_UNESCAPED_UNICODE);
      $result->close();
     $conn->close();
?>