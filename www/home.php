<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

session_start();
include("connection.php");
include("functions.php");

if (!isset($_SESSION['user_id'])) {
    header('Location: login.php');
    exit;
}

if($_SERVER['REQUEST_METHOD'] == "POST") {
    $sql = "SELECT * FROM users";
    $result = mysqli_query($con, $sql);

    if (mysqli_num_rows($result) > 0) {
        while($row = mysqli_fetch_assoc($result)) {
            echo "user_id: " . $row["user_id"]. " - Name: " . $row["user_name"]. " - Password: " . $row["password"]. "<br>";
        }
    } else {
        echo "0 results";
    }
}

$user_id = $_SESSION['user_id'];
$stmt = $con->prepare("SELECT * FROM users WHERE user_id = ?");
$stmt->bind_param("i", $user_id);
$stmt->execute();

$result = $stmt->get_result();
$user = $result->fetch_assoc();

?>

<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
</head>
<body>
    <h1>Welcome, <?php echo $user['user_name']; ?></h1>
    <p>Password: <?php echo $user['password']; ?></p>
    
    <form method="post">
        <input type="submit" value="Show all users">
    </form>
</body>
</html>
