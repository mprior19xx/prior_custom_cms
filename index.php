<?php
require_once 'load.php';

if(isset($_GET['filter'])){
   
    $args = array(
        'tbl'=>'tbl_products',
        'tbl2'=>'tbl_category',
        'tbl3'=>'tbl_products_categories',
        'col'=>'prod_id',
        'col2'=>'category_id',
        'col3'=>'category_name',
        'filter'=>$_GET['filter']
    );
    $getProds = getProductsByCategories($args);
}else{
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
    <title>Michael Prior Custom CMS</title>
</head>
<body>

<?php include 'templates/header.php';?>

<!-- <h1>SportCheck CMS</h1> -->



<?php while ($row = $getProds->fetch(PDO::FETCH_ASSOC)): ?>
    <a href="prodDetails.php?id=<?php echo $row['prod_id']; ?>">
    <div class="prodItem">
        <img src="images/<?php echo $row['image']; ?>" alt="<?php echo $row['name']; ?>" />
        <h5><?php echo $row['price']; ?></h5>
        <h2><?php echo $row['name']; ?></h2>
    </div>
    </a>
<?php endwhile; ?>



<?php include 'templates/footer.php';?>

</body>
</html>