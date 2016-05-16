<?php
$strName = $_POST["name"];
//$strEmail = $_POST["email"];
echo "Name is $strName";
echo "<br />\n";

$link = mysqli_connect("127.0.0.1", "root", "root", "movie_db");
if (!$link) {
    die('Could not connect: ' . mysql_error());
}
echo 'Connected successfully';
echo "<br />\n";
mysqli_close($link);

$mysqli=new mysqli("localhost","root","root","movie_db");     //实例化mysqli
$query="select * from `movie` where title like '%".$strName."%'";
$result=$mysqli->query($query);
if ($result) {
         if($result->num_rows>0){                                               //判断结果集中行的数目是否大于0
                  echo "here";
				  echo "<br />\n";
				  while($row =$result->fetch_array() ){                        //循环输出结果集中的记录
                           echo ($row[0])."<br>";
                           echo ($row[1])."<br>";
						   echo ($row[2])."<br>";
						   echo ($row[3])."<br>";
						   echo ($row[4])."<br>";
						   echo ($row[5])."<br>";
						   echo ($row[6])."<br>";
						   echo ($row[7])."<br>";
						   echo ($row[8])."<br>";
						   echo ($row[9])."<br>";
                           echo "<hr>";
                  }
         }else {
			 echo "else";
			 echo "<br />\n";
		 }
		 
}else {
         echo "查询失败";
}
$result->free();
$mysqli->close();
?>
