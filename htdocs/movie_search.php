<?php
include_once 'includes/config.php';
 
 
$database = new Config();
$db = $database->getConnection();
 
include_once 'includes/data.inc.php';
$product = new Data($db);
$strName = $_POST["name"];
//$strEmail = $_POST["email"];
//echo "Name is $strName";
//echo "<br />\n";

$link = mysqli_connect("127.0.0.1", "root", "root", "movie_db");
if (!$link) {
    die('Could not connect: ' . mysql_error());
}
//echo 'Connected successfully';
//echo "<br />\n";*/
mysqli_close($link);

$mysqli=new mysqli("localhost","root","root","movie_db");     //实例化mysqli
$query="select * from `movie` where title like '%".$strName."%'";
$result=$mysqli->query($query);
if ($result) {
         if($result->num_rows>0){                                               //判断结果集中行的数目是否大于0
                  //echo "here";
				  //echo "<br />\n";
				  while($row =$result->fetch_array() ){                        //循环输出结果集中的记录
                           //echo ($row[0])."<br>";
                           //echo ($row[1])."<br>";
						   //echo ($row[2])."<br>";
						   //echo ($row[3])."<br>";
						   //echo ($row[4])."<br>";
						   //echo ($row[5])."<br>";
						   //echo ($row[6])."<br>";
						   //echo ($row[7])."<br>";
						   //echo ($row[8])."<br>";
						   //echo ($row[9])."<br>";
                           //echo "<hr>";
						   $product->id = $row[0];
						   $product->title = $row[1];
							$product->year = $row[2];
							$product->date = $row[3];
							$product->photos = $row[4];
							$product->videos = $row[5];
							$product->rating = $row[6];
							$product->language = $row[7];
							$product->country = $row[8];
							$product->duration = $row[9];
                  }

         }else {
			 echo "else";
			 echo "<br />\n";
		 }
		 
}else {
         echo "Movie NOT Found!";
}
$result->free();
$mysqli->close();

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
 <a class="btn btn-primary" href="movie.php" role="button">Back View Data</a>
      </p>
 



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