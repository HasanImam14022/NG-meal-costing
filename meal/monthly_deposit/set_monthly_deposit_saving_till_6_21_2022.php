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

$recording_person_id = $_SESSION['user_id'];
$password = $_SESSION['password'];
$recording_person_name = $_SESSION['user_name'];


$counter = $_POST['counter'];



$date= $_POST['date'];

$split_date_data= explode("-", $date);
$day=$split_date_data[0];
$month=$split_date_data[1];
$year=$split_date_data[2];
$mysql_type_date = $year."-".$month."-".$day;





mysqli_query($con,"BEGIN");
mysqli_query($con,"START TRANSACTION") or die(mysqli_error($con));
//in loop

    for($i=1; $i < $counter; $i++)
	{
		$user_name = $_POST['user_name'.$i];
		$erp_id = $_POST['user_id'.$i];
		$deposit = $_POST['deposit'.$i];

		if(isset($deposit) && $deposit != "")
		{
		$select_sql_for_duplicacy="SELECT * from `set_monthly_deposit` WHERE erp_id = '$erp_id' AND deposit = '$deposit' AND `month`='$month' AND `year`='$year'";

		$result = mysqli_query($con,$select_sql_for_duplicacy) or die(mysqli_error($con));

		if(mysqli_num_rows($result)>0)
		{

			$data_previously_saved == "Yes";
		}
		else if( mysqli_num_rows($result) < 1)
		{ 

		   $sql_for_deposit = "SELECT * FROM `set_monthly_deposit` WHERE erp_id = '$erp_id' AND `month`='$month' AND `year`='$year'";
			$res_for_deposit =  mysqli_query($con,$sql_for_deposit) or die(mysqli_error($con));
			$row_for_deposit = mysqli_fetch_assoc($res_for_deposit);
			

			

			if($row_for_deposit['deposit'] != NULL)
			{
				$update_sql_statement="UPDATE `set_monthly_deposit` SET `deposit`='$deposit',`recording_person_name`='$recording_person_name',`recording_time`= NOW() WHERE `erp_id`= '$erp_id' AND `month` = '$month' AND `year` = '$year'";
				mysqli_query($con,$update_sql_statement) or die(mysqli_error($con));

				echo "Sucessfully Updated";

				
				
			}
			else if($row_for_deposit['deposit'] == NULL){
				 	$insert_sql_statement="INSERT INTO `set_monthly_deposit` ( `date`,`day`,`month`,`year`,`erp_id`,`name`,`deposit`,`recording_person_name`,`recording_person_id`,`recording_time` ) values ('$mysql_type_date','$day','$month','$year','$erp_id','$user_name','$deposit','$recording_person_name','$recording_person_id',NOW())";

			

				mysqli_query($con,$insert_sql_statement) or die(mysqli_error($con));

				if(mysqli_affected_rows($con)<>1)
				{

					$data_insertion_hampering = "Yes";

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
			
		}

		}
		

		

}

// if(mysqli_affected_rows($con)<>1)
// {

// 	$data_insertion_hampering = "Yes";

// }

// if($data_previously_saved == "Yes")
// {

// 	mysqli_query($con,"ROLLBACK");
// 	echo "Data is previously saved.";

// }
// else if($data_insertion_hampering == "No" )
// {

// 	mysqli_query($con,"COMMIT");
// 	echo "Data is successfully saved.";

// }
// else
// {

// 	mysqli_query($con,"ROLLBACK");
// 	echo "Data is not successfully saved.";

// }


//END of New
// $select_sql_for_duplicacy="SELECT * from `set_monthly_deposit` where `month`='$month' AND `year`='$year'";

//  $result = mysqli_query($con,$select_sql_for_duplicacy) or die(mysqli_error($con));

// if(mysqli_num_rows($result)>0)
// {

// 	$data_previously_saved="Yes";

// }

// else if( mysqli_num_rows($result) < 1)
// { 

	

// 	for($i=1; $i < $counter; $i++)
// 	{
	
//           $user_name = $_POST['user_name'.$i];
// 		  $erp_id = $_POST['user_id'.$i];
//           $deposit = $_POST['deposit'.$i];

		
		             

// 	     $insert_sql_statement="insert into `set_monthly_deposit` ( `date`,`day`,`month`,`year`,`erp_id`,`name`,`deposit`,`recording_person_name`,`recording_person_id`,`recording_time` ) values ('$mysql_type_date','$day','$month','$year','$erp_id','$user_name','$deposit','$recording_person_name','$recording_person_id',NOW())";

		

// 		mysqli_query($con,$insert_sql_statement) or die(mysqli_error($con));
       

		

// 		if(mysqli_affected_rows($con)<>1)
// 		{
		
// 			$data_insertion_hampering = "Yes";
		
// 		}
// 	}
// }

// if($data_previously_saved == "Yes")
// {

// 	mysqli_query($con,"ROLLBACK");
// 	echo "Data is previously saved.";

// }
// else if($data_insertion_hampering == "No" )
// {

// 	mysqli_query($con,"COMMIT");
// 	echo "Data is successfully saved.";

// }
// else
// {

// 	mysqli_query($con,"ROLLBACK");
// 	echo "Data is not successfully saved.";

// }

$obj->disconnection();

?>
