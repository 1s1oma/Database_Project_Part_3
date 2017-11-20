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

//Retrieve and print all data

//Appetizer
$app_query = "SELECT * FROM appetizer";
$app_result = $conn->query($app_query);

echo "<h4>Below are the Yummy Appetizers</h4>";

if($app_result->num_rows > 0){
    while($row = $app_result->fetch_assoc()){
        echo "<br> Product ID:". $row["Product_ID"]."  Puffpuff:".$row["Puffpuff"].
                "  Akara:".$row["Akara"]."  Dodo:".$row["Dodo"]."  Buns:" .$row["Buns"]."<br>";
    }
}
else{
    echo "No entries";
}

//Beverage
$bev_query = "SELECT * FROM beverage";
$bev_result = $conn->query($bev_query);

echo "<h4>Below are the Refreshing Beverages</h4>";

if($bev_result->num_rows > 0){
    while($row = $bev_result->fetch_assoc()){
        echo "<br> <strong>Product ID:</strong>". $row["Product_ID"]."  Soda:".$row["Soda"].
                "  Water:".$row["Water"]."  Coffee:".$row["Coffee"]."  Tea:" .$row["Tea"]."<br>";
    }
}
else{
    echo "No entries";
}

//Dessert
$des_query = "SELECT * FROM dessert";
$des_result = $conn->query($des_query);

echo "<h4>Below are the Delicioussss Desserts</h4>";

if($des_result->num_rows > 0){
    while($row = $des_result->fetch_assoc()){
        echo "<br> Product ID:". $row["Product_ID"]."  Vanilla ice cream:".$row["Vanilla ice cream"].
                "  Coconut cake:".$row["Coconut cake"]."  Shuku:".$row["Shuku"]."  Chocolate cake:" .$row["Chocolate cake"]."<br>";
    }
}
else{
    echo "No entries";
}

//Main Dish
$main_query = "SELECT * FROM main_dish";
$main_result = $conn->query($main_query);

echo "<h4>Below are the Main Dish!</h4>";

if($main_result->num_rows > 0){
    while($row = $main_result->fetch_assoc()){
        echo "<br> Product ID:". $row["Product_ID"]."  Soya:".$row["Soya"].
                "  Fufu Egusi Soup:".$row["Fufu Egusi Soup"]."  Jollof rice:".$row["Jollof rice"]."  Fried rice:" .$row["Fried rice"]."<br>";
    }
}
else{
    echo "No entries";
}

//Salad
$sal_query = "SELECT * FROM salad";
$sal_result = $conn->query($sal_query);

echo "<h4>Below are healthy, yet tasty Salads</h4>";

if($sal_result->num_rows > 0){
    while($row = $sal_result->fetch_assoc()){
        echo "<br> Product ID:". $row["Product_ID"]."  Garden:".$row["Garden"].
                "  Bean:".$row["Bean"]."  Greek:".$row["Greek"]."  Caesar:" .$row["Caesar"]."<br>";
    }
}
else{
    echo "No entries";
}

//Person
$person_query = "SELECT * FROM person";
$person_result = $conn->query($person_query);

echo "<h4>Below are Persons - Customers, Employee, Staff</h4>";

if($person_result->num_rows > 0){
    while($row = $person_result->fetch_assoc()){
        echo "<br> ID_No:". $row["ID_No"]."  Name:".$row["Name"].
                "  Phone No:".$row["Phone_No"]."  Address:".$row["Address"]."  Email:" .$row["Email"].
                "  Username:" .$row["Username"]."  Password:" .$row["Password"]."  Created Date:" .$row["Created_date"]."<br>";
    }
}
else{
    echo "No entries";
}

//Orders
$order_query = "SELECT * FROM orders";
$order_result = $conn->query($order_query);

echo "<h4>Below are the Orders</h4>";

if($order_result->num_rows > 0){
    while($row = $order_result->fetch_assoc()){
        echo "<br> Order_ID:". $row["Order_ID"]."  Order Date:".$row["Order_date"].
                "  Order Quantity:".$row["Order_quantity"]."  Total_price:".$row["Total_price"]."  Order_status:" .$row["Order_status"].
                "  Cus_ID:" .$row["Cus_ID"]."  Prod_ID:" .$row["Prod_ID"]."<br>";
    }
}
else{
    echo "No entries";
}
$conn->close();
?>

