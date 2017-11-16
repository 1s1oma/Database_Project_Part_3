<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "root", "FO");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 
$Order_ID = mysqli_real_escape_string($link, $_REQUEST['Order_ID']);
$Order_date = mysqli_real_escape_string($link, $_REQUEST['Order_date']);
$Total_price = mysqli_real_escape_string($link, $_REQUEST['Total_price']);
$Order_status = mysqli_real_escape_string($link, $_REQUEST['Order_status']);
$Cus_ID = mysqli_real_escape_string($link, $_REQUEST['Cus_ID']);
$Prod_ID = mysqli_real_escape_string($link, $_REQUEST['Prod_ID']);

// attempt insert query execution
$sql = "INSERT INTO orders (Order_ID, Order_date, Order_quantity, Total_price, Order_status, Cus_ID, Prod_ID) VALUES ('$Order_ID', '$Order_date', '$Order_quantity', '$Total_price', '$Order_status', '$Cus_ID', '$Prod_ID')";
if(mysqli_query($link, $sql)){
    echo "Records added successfully.";
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}
 
// close connection
mysqli_close($link);
?>

