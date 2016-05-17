<?php
class Person{
  
 // database connection and table name
 private $conn;
 private $table_name = "person";
  
 // object properties
 public $id;
 public $last;
 public $middle;
 public $first;
 public $photo;
 public $dob;
 public $birthplace;
 public $curr;
 public $des;
 public $active;
 public $marital;
	
  
 public function __construct($db){
  $this->conn = $db;
 }
  
 // create product
 function create(){
   
  //write query
 // $query = "INSERT INTO " . $this->table_name . " values('',?,?,?,?,?,?,?,?,?)";
 $query = "INSERT INTO person (last_name,middle_name,first_name,photo,dob,birth_place,current_residence,description,active_status,marital_status) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"; 
  $stmt = $this->conn->prepare($query);
  $stmt->bindParam(1, $this->last);
  $stmt->bindParam(2, $this->middle);
  $stmt->bindParam(3, $this->first);
  $stmt->bindParam(4, $this->photo);
  $stmt->bindParam(5, $this->dob);
  $stmt->bindParam(6, $this->birthplace);
  $stmt->bindParam(7, $this->curr);
  $stmt->bindParam(7, $this->des);
  $stmt->bindParam(8, $this->active);
  $stmt->bindParam(9, $this->marital);
   
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
     last_name ASC 
    LIMIT 
     {$from_record_num}, {$records_per_page}";
   
  $stmt = $this->conn->prepare( $query );
  $stmt->execute();
   
  return $stmt;
 }
  
 // used for paging products
 public function countAll(){
   
  $query = "SELECT person_id FROM " . $this->table_name . "";
   
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
     person_id = ? 
    LIMIT 
     0,1";
 
  $stmt = $this->conn->prepare( $query );
  $stmt->bindParam(1, $this->id);
  $stmt->execute();
 
  $row = $stmt->fetch(PDO::FETCH_ASSOC);
   
  $this->id = $row['person_id'];
  $this->last = $row['last_name'];
  $this->middle = $row['middle_name'];
  $this->first = $row['first_name'];
  $this->photo = $row['photo'];
  $this->dob = $row['dob'];
  $this->birthplace = $row['birth_place'];
  $this->curr = $row['current_residence'];
  $this->des = $row['description'];
  $this->active = $row['active_status'];
  $this->marital = $row['marital_status'];
 }
  
 // update the product
 function update(){
 
  $query = "UPDATE 
     " . $this->table_name . "
    SET 
     person_id = :id, 
     last_name = :last, 
     middle_name = :middle, 
     first_name = :first,
	 photo = :photo,
	 dob = :dob,
	 birth_place = :birthplace,
	 current_residence = :curr,
	 description = :des,
	 active_status = :active,
	 marital_status = :marital
    WHERE
     person_id = :id";
 
  $stmt = $this->conn->prepare($query);
 
  $stmt->bindParam(':id', $this->id);
  $stmt->bindParam(':last', $this->last);
  $stmt->bindParam(':middle', $this->middle);
  $stmt->bindParam(':first', $this->first);
  $stmt->bindParam(':photo', $this->photo);
  $stmt->bindParam(':dob', $this->dob);
  $stmt->bindParam(':birthplace', $this->birthplace);
  $stmt->bindParam(':curr', $this->curr);
  $stmt->bindParam(':des', $this->des);
  $stmt->bindParam(':active', $this->active);
  $stmt->bindParam(':marital', $this->marital);
   
  // execute the query
  if($stmt->execute()){
   return true;
  }else{
   return false;
  }
 }
  
 // delete the product
 function delete(){
  
  $query = "DELETE FROM " . $this->table_name . " WHERE person_id = ?";
   
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