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
$query="select * from `company` where company_name like '%".$strName."%'";
$result=$mysqli->query($query);
if ($result) {
         if($result->num_rows>0){                                               //判断结果集中行的数目是否大于0
                  echo "here";
				  echo "<br />\n";
				  while($row =$result->fetch_array() ){                        //循环输出结果集中的记录
                           echo ($row[0])."<br>";
                           echo ($row[1])."<br>";
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
