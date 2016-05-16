<?php
include_once 'includes/config.php';
 
$id = isset($_GET['id']) ? $_GET['id'] : die('ERROR: missing ID.');
 
$database = new Config();
$db = $database->getConnection();
 
include_once 'includes/data.inc.php';
$product = new Data($db);
 
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
 
 $product->title = $_POST['title'];
 $product->year = $_POST['year'];
 $product->date = $_POST['date'];
 $product->photos = $_POST['photos'];
 $product->videos = $_POST['videos'];
 $product->rating = $_POST['rating'];
 $product->language = $_POST['language'];
 $product->country = $_POST['country'];
 $product->duration = $_POST['duration'];
  
 if($product->update()){
?>
<script>window.location.href='test3.php'</script>
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
    <label for="title">Title</label>
    <input type="text" class="form-control" id="title" name="title" value='<?php echo $product->title; ?>'>
  </div>
  <div class="form-group">
    <label for="year">Release Year</label>
    <input type="text" class="form-control" id="year" name="year" value='<?php echo $product->year; ?>'>
  </div>
  <div class="form-group">
    <label for="date">Release Date</label>
    <input type="text" class="form-control" id="date" name="date" value='<?php echo $product->date; ?>'>
  </div>
  <div class="form-group">
    <label for="photos">Photos</label>
    <textarea class="form-control" rows="2" id="photos" name="photos"><?php echo $product->photos; ?></textarea>
  </div>
  <div class="form-group">
    <label for="videos">Videos</label>
    <textarea class="form-control" rows="2" id="videos" name="videos"><?php echo $product->videos; ?></textarea>
  </div>
  <div class="form-group">
    <label for="rating">Rating</label>
    <input type="text" class="form-control" id="rating" name="rating" value='<?php echo $product->rating; ?>'>
  </div>
  <div class="form-group">
    <label for="language">Language</label>
    <input type="text"  class="form-control" id="language" name="language" value='<?php echo $product->language; ?>'>
  </div>
  <div class="form-group">
    <label for="country">Country</label>
    <input type="text"  class="form-control" id="country" name="country" value='<?php echo $product->country; ?>'>
  </div>
  <div class="form-group">
    <label for="duration">Duration</label>
    <input type="text"  class="form-control" id="duration" name="duration" value='<?php echo $product->duration; ?>'>
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