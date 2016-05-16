<?php
class Data{
  
 // database connection and table name
 private $conn;
 private $table_name = "movie";
  
 // object properties
 public $id;
 public $title;
 public $year;
 public $date;
 public $photos;
 public $videos;
 public $rating;
 public $language;
 public $country;
 public $duration;
	
  
 public function __construct($db){
  $this->conn = $db;
 }
  
 // create product
 function create(){
   
  //write query
  $query = "INSERT INTO " . $this->table_name . "(movie_id,title,release_year,release_date,photos,videos,imdb_rating,movie_language,country,duration) " . " values('',?,?,?,?,?,?,?,?,?)";
   
  $stmt = $this->conn->prepare($query);
 
  $stmt->bindParam(1, $this->title);
  $stmt->bindParam(2, $this->year);
  $stmt->bindParam(3, $this->date);
  $stmt->bindParam(4, $this->photos);
  $stmt->bindParam(5, $this->videos);
  $stmt->bindParam(6, $this->rating);
  $stmt->bindParam(7, $this->language);
  $stmt->bindParam(8, $this->country);
  $stmt->bindParam(9, $this->duration);
   
  if($stmt->execute()){
   return true;
  }else{
   return false;
  }
   
 }
  
 // read products
 function readAll($page, $from_record_num, $records_per_page){
 
  $query = "SELECT 
     *
    FROM 
     " . $this->table_name . "
    ORDER BY 
     title ASC 
    LIMIT 
     {$from_record_num}, {$records_per_page}";
   
  $stmt = $this->conn->prepare( $query );
  $stmt->execute();
   
  return $stmt;
 }
  
 // used for paging products
 public function countAll(){
   
  $query = "SELECT movie_id FROM " . $this->table_name . "";
   
  $stmt = $this->conn->prepare( $query );
  $stmt->execute();
   
  $num = $stmt->rowCount();
   
  return $num;
 }
  
 // used when filling up the update product form
 function readOne(){
   
  $query = "SELECT 
     *
    FROM 
     " . $this->table_name . "
    WHERE 
     movie_id = ? 
    LIMIT 
     0,1";
 
  $stmt = $this->conn->prepare( $query );
  $stmt->bindParam(1, $this->id);
  $stmt->execute();
 
  $row = $stmt->fetch(PDO::FETCH_ASSOC);
   
  $this->id = $row['movie_id'];
  $this->title = $row['title'];
  $this->year = $row['release_year'];
  $this->date = $row['release_date'];
  $this->photos = $row['photos'];
  $this->videos = $row['videos'];
  $this->rating = $row['imdb_rating'];
  $this->language = $row['movie_language'];
  $this->country = $row['country'];
  $this->duration = $row['duration'];
 }
  
 // update the product
 function update(){
 
  $query = "UPDATE 
     " . $this->table_name . "
    SET 
     movie_id = :id, 
     title = :title, 
     release_year = :year, 
     release_date = :date,
	 photos = :photos,
	 videos = :videos,
	 imdb_rating = :rating,
	 movie_language = :language,
	 country = :country,
	 duration = :duration
    WHERE
     movie_id = :id";
 
  $stmt = $this->conn->prepare($query);
 
  $stmt->bindParam(':id', $this->id);
  $stmt->bindParam(':title', $this->title);
  $stmt->bindParam(':year', $this->year);
  $stmt->bindParam(':date', $this->date);
  $stmt->bindParam(':photos', $this->photos);
  $stmt->bindParam(':videos', $this->videos);
  $stmt->bindParam(':rating', $this->rating);
  $stmt->bindParam(':language', $this->language);
  $stmt->bindParam(':country', $this->country);
  $stmt->bindParam(':duration', $this->duration);
   
  // execute the query
  if($stmt->execute()){
   return true;
  }else{
   return false;
  }
 }
  
 // delete the product
 function delete(){
  
  $query = "DELETE FROM " . $this->table_name . " WHERE movie_id = ?";
   
  $stmt = $this->conn->prepare($query);
  $stmt->bindParam(1, $this->id);
 
  if($result = $stmt->execute()){
   return true;
  }else{
   return false;
  }
 }
}
?> 