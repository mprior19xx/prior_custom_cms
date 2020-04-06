<?php 
    require_once '../load.php';
    confirm_logged_in();

    if (isset($_GET['filter'])) {
       
        $args = array(
            'tbl' => 'tbl_products',
            'tbl2' => 'tbl_category',
            'tbl3' => 'tbl_products_categories',
            'col' => 'prod_id',
            'col2' => 'category_id',
            'col3' => 'category_name',
            'filter' => $_GET['filter'],
        );
        $getProds = getProductsByCategories($args);
    } else {
        $prod_table = 'tbl_products';
        $getProds = getAll($prod_table);
    }
    
    
    ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Dashboard</title>
</head>
<body>
    <h2>Welcome! <?php echo $_SESSION['user_name'];?></h2>


<h3>What would you like to do today?</h3>
    <a href="admin_createuser.php">Create User</a>
    <a href="admin_edituser.php">Edit User</a>
    <a href="admin_deleteuser.php">Delete User</a>

<a href="admin_createproduct.php">Add New Product</a>

<a href="admin_logout.php">Sign Out</a><br><br><br><br>
    

<h2>Edit or Delete products</h2>

<?php while ($row = $getProds->fetch(PDO::FETCH_ASSOC)): ?>
    <div class="prodItem editProduct">
        <img src="../images/<?php echo $row['image']; ?>" alt="<?php echo $row['name']; ?>" />
        <h5><?php echo $row['price']; ?></h5>
        <h2><?php echo $row['name']; ?></h2>
    </div>
   
    <a href="admin_editproduct.php?id=<?php echo $row['prod_id']; ?>">Edit</a>
    
    <a href="admin_deleteproduct.php?id=<?php echo $row['prod_id']; ?>">Delete</a><br><br><br><br>
<?php endwhile; ?>

</body>
</html>


    
    
 