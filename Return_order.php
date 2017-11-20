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

//Sets the Return_order column in "orders" to 1
$customer_name = mysqli_real_escape_string($conn, $_REQUEST['customer_name']);
$return_query="UPDATE orders, products, customers, person
SET Return_order = 1  
WHERE person.Name = '$customer_name' AND orders.Prod_ID=products.Product_ID AND person.ID_No = customers.ID_No";
$return_result = $conn->query($return_query);

//Prints Prodcuct price
$price_query= "SELECT `Product_price` 
FROM `products`, `customers`, `person`
WHERE customers.ID_No = person.ID_No AND customers.ID_No = Product_ID;";
$price_result = $conn->query($price_query);

if($price_result->num_rows > 0){
while($row = $price_result->fetch_assoc()){
echo "<br> Amount Due: ".$row["Product_price"];
}
}

$conn->close();
?> 
