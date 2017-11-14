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

/*Example Load data into database*/
//Appetizer product
$sql_app = "INSERT INTO appetizer (Product_ID,Puffpuff,Akara,Dodo,Buns) VALUES ('1','spicy','spicy','spicy','spicy')";

//$loadQuery = mysqli_query($conn, $sql);
if($conn->query($sql_app)==TRUE){
	echo "<br>".'Data inserted successfully';
}
else{
	echo "Error: " .$sql_app . "<br>" . $conn->error;
}

$conn->close();
?> 
