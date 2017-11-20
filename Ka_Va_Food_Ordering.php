 <!DOCTYPE html>
 <html>
 <body>

<h3> Welcome to Ka-Va Foods!</h3>

<!--Print ALL Entries Transaction-->
 <form action="Print_data.php" method="post">
     <input type="submit" class = "button" value="Print Data Entries"/>
</form>

<br>
<!--Return Order Transaction-->
<form action="Return_order.php" method="post">
    <p>
        <strong>Sorry for the inconvenience. To return an order, please enter your name</strong><br>
        <label for="CustomerName">Customer Name</label>
        <input type="text" name="customer_name" id="CustomerName">
    </p>
     <input type="submit" class = "button" value="Return Order"/>
</form>
 
<br>
<!--Update Product Transaction-->
 <form action="Update_product.php" method="post">
     <p>
         <strong>Please enter the product field you would like to update</strong>
        <p>
        <label for="Product_ID">Product ID</label>
        <input type="number" name="Product_ID" id="Product_ID" maxlength="11">
    </p>
    <p>
        <label for="Description">Description</label>
        <input type="text" name="Description" id="Description" maxlength="30">
    <p>
        <label for="Product_price">Product Price</label>
        <input type="text" name="Product_price" id="Product_price" >
    </p>
    <p>
        <label for="Product_name">Product Name</label>
        <input type="text" name="Product_name" id="Product_name" maxlength="15">
    </p>
    <p>
        <label for="Product_category">Product Category</label>
        <input type="text" name="Product_category" id="Product_category" maxlength="10">
    </p>
    </p>
     <input type="submit" class = "button" value="Update Product"/>
</form>

<!--Delete Customer Transaction-->
<br>
<form action="Delete_customer.php" method="post">
    <p>
        <strong>Unfortunately this customer has gat to go, enter their ID</strong><br>
        <label for="CustomerID">Customer ID</label>
        <input type="text" name="customer_ID" id="CustomerID">
    </p>
     <input type="submit" class = "button" value="Delet Customer"/>
</form>
<?php //include 'Return_order.php';?>

</body>
</html>