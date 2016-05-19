<?php
class Company{
  
 // database connection and table name
 private $conn;
 private $table_name = "company";
  
 // object properties
 public $id;
 public $name;
  
 public function __construct($db){
  $this->conn = $db;
 }
  
 // create product
 function create(){
  //write query
  //$query = "INSERT INTO " . $this->table_name . " values('',?)";
 $query = "INSERT INTO company (company_name) values(?)"; 

  $stmt = $this->conn->prepare($query);
  $stmt->bindParam(1, $this->name);

   
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
     company_name ASC 
    LIMIT 
     {$from_record_num}, {$records_per_page}";
   
  $stmt = $this->conn->prepare( $query );
  $stmt->execute();
   
  return $stmt;
 }
  
 // used for paging products
 public function countAll(){
   
  $query = "SELECT company_id FROM " . $this->table_name . "";
   
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
     company_id = ? 
    LIMIT 
     0,1";
 
  $stmt = $this->conn->prepare( $query );
  $stmt->bindParam(1, $this->id);
  $stmt->execute();
 
  $row = $stmt->fetch(PDO::FETCH_ASSOC);
   
  $this->id = $row['company_id'];
  $this->name = $row['company_name'];

 }
  
 // update the product
 function update(){
 
  $query = "UPDATE 
     " . $this->table_name . "
    SET 
     company_id = :id, 
     company_name = :name 
    WHERE
     company_id = :id";
 
  $stmt = $this->conn->prepare($query);
 
  $stmt->bindParam(':id', $this->id);
  $stmt->bindParam(':name', $this->name);
   
  // execute the query
  if($stmt->execute()){
   return true;
  }else{
   return false;
  }
 }
  
 // delete the product
 function delete(){
  
  $query = "DELETE FROM " . $this->table_name . " WHERE company_id = ?";
   
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