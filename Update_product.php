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

//Updates Product
$Product_ID = mysqli_real_escape_string($conn, $_REQUEST['Product_ID']);
$Description = mysqli_real_escape_string($conn, $_REQUEST['Description']);
$Product_price = mysqli_real_escape_string($conn, $_REQUEST['Product_price']);
$Product_name = mysqli_real_escape_string($conn, $_REQUEST['Product_name']);
$Product_category = mysqli_real_escape_string($conn, $_REQUEST['Product_category']);

$update_query="UPDATE `products` SET `Product_ID`= '$Product_ID',`Description`='$Description',`Product_price`='$Product_price',`Product_name`='$Product_name',`Product_category`='$Product_category' 
WHERE products.Product_ID ='$Product_ID'";
$update_result = $conn->query($update_query);

$conn->close();
?> 
