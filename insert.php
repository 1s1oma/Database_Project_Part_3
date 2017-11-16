<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "root", "FO");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}

$ID_No = mysqli_real_escape_string($link, $_REQUEST['ID_No']);
$Name = mysqli_real_escape_string($link, $_REQUEST['Name']);
$Phone_No = mysqli_real_escape_string($link, $_REQUEST['Phone_No']);
$Address = mysqli_real_escape_string($link, $_REQUEST['Address']);
$Email = mysqli_real_escape_string($link, $_REQUEST['Email']);
$Username = mysqli_real_escape_string($link, $_REQUEST['Username']);
$Password = mysqli_real_escape_string($link, $_REQUEST['Password']);
$Created_date = mysqli_real_escape_string($link, $_REQUEST['Created_date']);

 
// attempt insert query execution
$sql = "INSERT INTO person (ID_No, Name, Phone_No, Address, Email, Username, Password, Created_date) VALUES ('$ID_No', '$Name', '$Phone_No', '$Address', '$Email', '$Username', '$Password', '$Created_date')";
if(mysqli_query($link, $sql)){
    echo "Records added successfully.";
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}
 
// close connection
mysqli_close($link);
?>

