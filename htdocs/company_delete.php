<?php
// check if value was posted
// include database and object file
 include_once 'includes/config.php';
 include_once 'includes/company.inc.php';
 
 // get database connection
 $database = new Config();
 $db = $database->getConnection();
 
 // prepare product object
 $product = new Company($db);
  
 // set product id to be deleted
 $product->id = isset($_GET['id']) ? $_GET['id'] : die('ERROR: missing ID.');
  
 // delete the product
 if($product->delete()){
  echo "<script>location.href='companies.php'</script>";
 }
  
 // if unable to delete the product
 else{
  echo "<script>alert('Gagal menghapus data')</script>";
   
 }
?>