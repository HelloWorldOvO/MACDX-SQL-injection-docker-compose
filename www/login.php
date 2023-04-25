<?php

session_start();
include("connection.php");
include("functions.php");

if($_SERVER['REQUEST_METHOD'] == "POST") {
    $user_name = $_POST['user_name'];
    $password = $_POST['password'];

    $sql = "SELECT * FROM users WHERE user_name = '" . $user_name . "' AND password = '" . $password . "'";

    $result = $con->query($sql);

    if($result->num_rows > 0) 
    {
    // 登入成功
    $_SESSION['user_id'] = $result->fetch_assoc()['user_id'];
    header('Location: home.php');
    exit;
    } 
  
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
</head>
<body>


    <style type="text/css">
    
    #text{
    
         height: 25px;
         border-radius: 5px;
         padding: 4px;
         border: solid thin #aaa;
        width: 100%;
    
    }
    
    #button{
    
         background-color: lightblue;
         color: white;
         width: 100px;
         padding: 10px;
         border: none;
    }
    
    #box{
    
         background-color: grey;
         margin: auto;
         width: 300px;
         padding: 20px;
    
    }
    
    </style>
    
    <div id="box">
    
        <form method="post">
            <div style="font-size: 20px;margin: 10px;color: white;">Login</div>
            <input id="text" type="text" name= "user_name"><br><br>
            <input id="text" type="password" name= "password"><br><br>
            <input id="button" type="submit" value= "Login"><br><br>
            
          
        </form>
    </div>
        
</body>
</html>
