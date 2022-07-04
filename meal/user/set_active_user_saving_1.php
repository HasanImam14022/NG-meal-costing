<?php
session_start();
error_reporting(0);
require_once("../login/session.php");
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();



$data_previously_saved = "No";
$data_insertion_hampering = "No";
/*$user_name ="Iftekhar";
$user_id ="Iftekhar";
$password ="1234";*/

$user_id = $_SESSION['user_id'];
$password = $_SESSION['password'];
$user_name = $_SESSION['user_name'];
/*
$user_id = $_SESSION['user_id'];
$password = $_SESSION['password'];

$sql = "select * from hrm_info.user_login where user_id='$user_id' and `password`='$password'";
$result = mysqli_query($con,$sql) or die(mysqli_error($con));

if( mysql_num_rows($result) < 1 )
{

	header('Location:logout.php');

}
else
{
	while($row=mysql_fetch_array($result))
	{	
		 $user_name=$row['user_name'];	
	}
}

*/


$date= $_POST['date'];

$split_date_data= explode("-", $date);
$day=$split_date_data[0];
$month=$split_date_data[1];
$year=$split_date_data[2];
$mysql_type_date = $year."-".$month."-".$day;
$count = 1;


$active_status= $_POST['active_status'];

$temp_active_status = $active_status[0];

for($i=1;$i<count($active_status);$i++) // Making Checkbox Value Comma(,) Separated.
{    

	$temp_active_status=$temp_active_status."?tttmn?".$active_status[$i];
}








mysqli_query($con,"BEGIN");
mysqli_query($con,"START TRANSACTION") or die(mysqli_error($con));
//in loop



//  $select_sql_for_duplicacy="select * from `test_method_for_customer` where `customer_name`='$customer_name' and `checking_field`='$temp_test_method_name'";
$select_sql_for_duplicacy="select * from `set_active_user` where `date`='$mysql_type_date'";

 $result = mysqli_query($con,$select_sql_for_duplicacy) or die(mysqli_error($con));

if(mysqli_num_rows($result)>0)
{

	$data_previously_saved="Yes";

}
//in loop
else if( mysqli_num_rows($result) < 1)
{ 

	

  for($i=0; $i< count($active_status); $i++) // Making Checkbox Value Comma(,) Separated.
	{    
	

           $splitted_active_status = explode("?tttmn?",$temp_active_status);

           for($i=0;$i<count($splitted_active_status);$i++) // Making Checkbox Value Comma(,) Separated.
			      { 
                    $individual_value_for_insert=$splitted_active_status[$i];
   
			   
                    $splitted_receiving_date_individual= explode("fs",$individual_value_for_insert);
         
                    $name=$splitted_receiving_date_individual[0]; 
                    $erp_id=$splitted_receiving_date_individual[1]; 

               

		  $insert_sql_statement="insert into `set_active_user` ( `date`,`day`,`month`,`year`,`erp_id`,`name`,`count`,`recording_time` ) values ('$mysql_type_date','$day','$month','$year','$erp_id','$name','$count',NOW())";

		

		mysqli_query($con,$insert_sql_statement) or die(mysqli_error($con));
       
     }
		

		if(mysqli_affected_rows($con)<>1)
		{
		
			$data_insertion_hampering = "Yes";
		
		}
	}
}

if($data_previously_saved == "Yes")
{

	mysqli_query($con,"ROLLBACK");
	echo "Data is previously saved.";

}
else if($data_insertion_hampering == "No" )
{

	mysqli_query($con,"COMMIT");
	echo "Data is successfully saved.";

}
else
{

	mysqli_query($con,"ROLLBACK");
	echo "Data is not successfully saved.";

}

$obj->disconnection();

?>
