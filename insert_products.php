<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "root", "FO");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}

$Product_ID = mysqli_real_escape_string($link, $_REQUEST['Product_ID']);
$Description = mysqli_real_escape_string($link, $_REQUEST['Description']);
$Product_image = mysqli_real_escape_string($link, $_REQUEST['Product_image']);
$Product_in_stock = mysqli_real_escape_string($link, $_REQUEST['Product_in_stock']);
$Product_price = mysqli_real_escape_string($link, $_REQUEST['Product_price']);
$Product_name = mysqli_real_escape_string($link, $_REQUEST['Product_name']);
$Product_category = mysqli_real_escape_string($link, $_REQUEST['Product_category']);
$Payment_ID = mysqli_real_escape_string($link, $_REQUEST['Payment_ID']);
$Employee_ID = mysqli_real_escape_string($link, $_REQUEST['Employee_ID']);
$Staff_ID = mysqli_real_escape_string($link, $_REQUEST['Staff_ID']);

// attempt insert query execution
$sql = "INSERT INTO products (Product_ID, Description, Product_image, Product_in_stock, Product_price, Product_name, Product_category, Payment_ID, Employee_ID, Staff_ID) VALUES ('$Product_ID', '$Description', '$Product_image', '$Product_in_stock', '$Product_price', '$Product_name', '$Product_category', '$Payment_ID', '$Employee_ID', '$Staff_ID')";
if(mysqli_query($link, $sql)){
    echo "Records added successfully.";
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}
 
// close connection
mysqli_close($link);
?>

