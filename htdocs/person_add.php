<?php
include_once 'includes/config.php';
 
$database = new Config();
$db = $database->getConnection();
 
include_once 'includes/actors.inc.php';
$person = new Person($db);
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Add New Person to Movie Database</title>
 
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
 <a class="btn btn-primary" href="actors.php" role="button">Back View Data</a>
      </p>
 
<?php
if($_POST){
 
 $person->last = $_POST['last'];
 $person->middle = $_POST['middle'];
 $person->first = $_POST['first'];
 $person->photo = $_POST['photo'];
 $person->dob = $_POST['dob'];
 $person->birthplace = $_POST['birthplace'];
 $person->curr = $_POST['curr'];
 $person->des = $_POST['des'];
 $person->active = $_POST['active'];
 $person->marital = $_POST['marital'];
 $person->spouse = $_POST['spouse'];
 $person->gender = $_POST['gender'];
  
 if($person->create()){
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
    <label for="last">Last Name</label>
    <input type="text" class="form-control" id="last" name="last">
  </div>
  <div class="form-group">
    <label for="middle">Middle Name</label>
    <input type="text" class="form-control" id="middle" name="middle">
  </div>
  <div class="form-group">
    <label for="first">First Name</label>
    <input type="text" class="form-control" id="first" name="first">
  </div>
    <div class="form-group">
    <label for="photo">Photos</label>
    <input type="text" class="form-control" id="photo" name="photo">
  </div>
    <div class="form-group">
    <label for="dob">Date of Birth</label>
    <input type="text" class="form-control" id="dob" name="dob">
  </div>
  <div class="form-group">
    <label for="birthplace">Birth Place</label>
    <input type="text" class="form-control" id="birthplace" name="birthplace">
  </div>
    <div class="form-group">
    <label for="curr">Current Residence</label>
    <input type="text" class="form-control"  id="curr" name="curr">
  </div>
    <div class="form-group">
    <label for="des">Description</label>
    <input type="text" class="form-control"  id="des" name="des">
  </div>
    <div class="form-group">
    <label for="active">Active Status</label>
    <input type="text" class="form-control"  id="active" name="active">
  </div>
    <div class="form-group">
    <label for="marital">Marital Status</label>
    <input type="text" class="form-control" id="marital" name="marital">
  </div>
      <div class="form-group">
    <label for="spouse">Spouse Name</label>
    <input type="text" class="form-control" id="spouse" name="spouse">
  </div>
      <div class="form-group">
    <label for="gender">Gender</label>
    <input type="text" class="form-control" id="gender" name="gender">
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