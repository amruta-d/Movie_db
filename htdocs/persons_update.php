<?php
include_once 'includes/config.php';
 
$id = isset($_GET['id']) ? $_GET['id'] : die('ERROR: missing ID.');
 
$database = new Config();
$db = $database->getConnection();
 
include_once 'includes/actors.inc.php';
$product = new Person($db);
 
$product->id = $id;
$product->readOne();
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Edit Movie Information</title>
 
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
 
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
  <p>
</p>
    <div class="container">
      <p>
 <a class="btn btn-primary" href="index.php" role="button">Back View Data</a>
      </p>
 
<?php
if($_POST){
 
 $product->last = $_POST['last'];
 $product->middle = $_POST['middle'];
 $product->first = $_POST['first'];
 $product->photo = $_POST['photo'];
 $product->dob = $_POST['dob'];
 $product->birthplace = $_POST['birthplace'];
 $product->curr = $_POST['curr'];
 $product->des = $_POST['des'];
 $product->active = $_POST['active'];
 $product->marital = $_POST['marital'];
  
 if($product->update()){
?>
<script>window.location.href='actors.php'</script>
<?php
 }else{
?>
<div class="alert alert-danger alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
  <strong>Fail!</strong> Anda Gagal, Coba Lagi.
</div>
<?php
 }
}
?>
<form method="post">
  <div class="form-group">
    <label for="last">Last Name</label>
    <input type="text" class="form-control" id="last" name="last" value='<?php echo $product->last; ?>'>
  </div>
  <div class="form-group">
    <label for="middle">Middle Name</label>
    <input type="text" class="form-control" id="middle" name="middle" value='<?php echo $product->middle; ?>'>
  </div>
  <div class="form-group">
    <label for="first">First Name</label>
    <input type="text" class="form-control" id="first" name="first" value='<?php echo $product->first; ?>'>
  </div>
  <div class="form-group">
    <label for="photo">Photos</label>
    <textarea class="form-control" rows="2" id="photo" name="photo"><?php echo $product->photo; ?></textarea>
  </div>
  <div class="form-group">
    <label for="dob">Date of Birth</label>
    <textarea class="form-control" rows="2" id="dob" name="dob"><?php echo $product->dob; ?></textarea>
  </div>
  <div class="form-group">
    <label for="birthplace">Birth Place</label>
    <input type="text" class="form-control" id="birthplace" name="birthplace" value='<?php echo $product->birthplace; ?>'>
  </div>
  <div class="form-group">
    <label for="curr">Current Residence</label>
    <input type="text"  class="form-control" id="curr" name="curr" value='<?php echo $product->curr; ?>'>
  </div>
  <div class="form-group">
    <label for="des">Description</label>
    <input type="text"  class="form-control" id="des" name="des" value='<?php echo $product->des; ?>'>
  </div>
  <div class="form-group">
    <label for="active">Active Status</label>
    <input type="text"  class="form-control" id="active" name="active" value='<?php echo $product->active; ?>'>
  </div>
  <div class="form-group">
    <label for="marital">Marital Status</label>
    <input type="text"  class="form-control" id="marital" name="marital" value='<?php echo $product->marital; ?>'>
  </div>
  <button type="submit" class="btn btn-success">Submit</button>
</form>
    </div>
 
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>