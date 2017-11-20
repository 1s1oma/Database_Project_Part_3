 <?php
$servername = "127.0.0.1";
$username = "root";
$password = "";
$dbname = "project1_2";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";

//Delete Customer
$customer_ID = mysqli_real_escape_string($conn, $_REQUEST['customer_ID']);

$delete_query="DELETE FROM customers WHERE ID_No='$customer_ID'";
$delete_result = $conn->query($delete_query);

$conn->close();
?> 
