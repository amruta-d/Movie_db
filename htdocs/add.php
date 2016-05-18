<?php
include_once 'includes/config.php';
 
$database = new Config();
$db = $database->getConnection();
 
include_once 'includes/data.inc.php';
$product = new Data($db);
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Add New Movie to Movie Database</title>
 
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
 <a class="btn btn-primary" href="movie.php" role="button">Back View Data</a>
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
  
 if($product->create()){
?>
<div class="alert alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
  <strong>Success!</strong> Anda Berhasil, <a href="index.php">View Data</a>.
</div>
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
    <input type="text" class="form-control" id="title" name="title">
  </div>
  <div class="form-group">
    <label for="year">Release Year</label>
    <input type="text" class="form-control" id="year" name="year">
  </div>
  <div class="form-group">
    <label for="date">Release Date</label>
    <input type="text" class="form-control" id="date" name="date">
  </div>
    <div class="form-group">
    <label for="photos">Photos</label>
    <input type="text" class="form-control" id="photos" name="photos">
  </div>
    <div class="form-group">
    <label for="videos">Videos</label>
    <input type="text" class="form-control" id="videos" name="videos">
  </div>
    <div class="form-group">
    <label for="rating">Rating</label>
    <input type="text" class="form-control"  id="rating" name="rating">
  </div>
    <div class="form-group">
    <label for="language">Language</label>
    <input type="text" class="form-control"  id="language" name="language">
  </div>
    <div class="form-group">
    <label for="country">Country</label>
    <input type="text" class="form-control"  id="country" name="country">
  </div>
    <div class="form-group">
    <label for="duration">Duration</label>
    <input type="text" class="form-control" id="duration" name="duration">
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