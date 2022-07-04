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
    	$deposit_two = $_POST['deposit_two'.$i];

	



		if(isset($deposit) && $deposit != "")
		{
			
			$select_sql_for_duplicacy="SELECT * from `set_monthly_deposit` WHERE erp_id = '$erp_id' AND deposit = '$deposit' AND `month`='$month' AND `year`='$year'";

			$result = mysqli_query($con,$select_sql_for_duplicacy) or die(mysqli_error($con));

			if(mysqli_num_rows($result)>0)
			{
				
				
				$select_sql_for_duplicacy_with_deposit_and_deposit_two="SELECT * from `set_monthly_deposit` WHERE erp_id = '$erp_id' AND deposit = '$deposit' AND `deposit_two`='$deposit_two' AND `month`='$month' AND `year`='$year'";
		
           
				$result_for_duplicacy_with_deposit_and_deposit_two = mysqli_query($con,$select_sql_for_duplicacy_with_deposit_and_deposit_two) or die(mysqli_error($con));
				if(mysqli_num_rows($result_for_duplicacy_with_deposit_and_deposit_two)>0)
				{
					$data_previously_saved == "Yes";
					
				}
				else if( mysqli_num_rows($result_for_duplicacy_with_deposit_and_deposit_two) < 1)
				{ 
					if(isset($deposit_two) && $deposit_two != 0)
					{
				  	$update_sql_statement_deposit_two="UPDATE `set_monthly_deposit` SET `deposit_two`='$deposit_two',`deposit_two_recording_person_id`='$recording_person_id',`deposit_two_recording_person_name`='$recording_person_name',`deposit_two_recording_time`= NOW() WHERE `erp_id`= '$erp_id' AND `month` = '$month' AND `year` = '$year'";
				  
					mysqli_query($con,$update_sql_statement_deposit_two) or die(mysqli_error($con));

					if(mysqli_affected_rows($con)<>1)
					{
						$data_insertion_hampering = "Yes";
						$insert_activity_log = "INSERT INTO `activity_log` (`erp_id`,`deposit`,`deposit_two`,`final_pay`,`activity_type`,`activity_sql`,`recording_person_id`,`recording_person_name`,`day`,`month`,`year`,`recording_time`) VALUES('$erp_id','$deposit','$deposit_two','$final_pay','Updating Failed Deposit Two','".mysqli_real_escape_string($con, $update_sql_statement_deposit_two)."','$recording_person_id','$recording_person_name','$day','$month','$year',NOW())";
						mysqli_query($con,$insert_activity_log) or die(mysqli_error($con));
						
						
						if(mysqli_affected_rows($con)<>1)
						{					
							$data_insertion_hampering = "Yes";					
						}
						

					}
					else{
						$insert_activity_log = "INSERT INTO `activity_log` (`erp_id`,`deposit`,`deposit_two`,`final_pay`,`activity_type`,`activity_sql`,`recording_person_id`,`recording_person_name`,`day`,`month`,`year`,`recording_time`) VALUES('$erp_id','$deposit','$deposit_two','$final_pay','Updating Successful Deposit Two','".mysqli_real_escape_string($con, $update_sql_statement_deposit_two)."','$recording_person_id','$recording_person_name','$day','$month','$year',NOW())";
						mysqli_query($con,$insert_activity_log) or die(mysqli_error($con));
						if(mysqli_affected_rows($con)<>1)
						{					
							$data_insertion_hampering = "Yes";					
						}
						
					}
				  }
				}
				
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

					if(mysqli_affected_rows($con)<>1)
					{
						$data_insertion_hampering = "Yes";
						$insert_activity_log = "INSERT INTO `activity_log` (`erp_id`,`deposit`,`final_pay`,`activity_type`,`activity_sql`,`recording_person_id`,`recording_person_name`,`day`,`month`,`year`,`recording_time`) VALUES('$erp_id','$deposit','$final_pay','Updating Failed','".mysqli_real_escape_string($con, $update_sql_statement)."','$recording_person_id','$recording_person_name','$day','$month','$year',NOW())";
						mysqli_query($con,$insert_activity_log) or die(mysqli_error($con));
						
						
						if(mysqli_affected_rows($con)<>1)
						{					
							$data_insertion_hampering = "Yes";					
						}
						

					}
					else{
						$insert_activity_log = "INSERT INTO `activity_log` (`erp_id`,`deposit`,`final_pay`,`activity_type`,`activity_sql`,`recording_person_id`,`recording_person_name`,`day`,`month`,`year`,`recording_time`) VALUES('$erp_id','$deposit','$final_pay','Updating Successful','".mysqli_real_escape_string($con, $update_sql_statement)."','$recording_person_id','$recording_person_name','$day','$month','$year',NOW())";
						mysqli_query($con,$insert_activity_log) or die(mysqli_error($con));
						if(mysqli_affected_rows($con)<>1)
						{					
							$data_insertion_hampering = "Yes";					
						}
						
					}

					
					
				}
				else if($row_for_deposit['deposit'] == NULL){
				
					$insert_sql_statement="INSERT INTO `set_monthly_deposit` ( `date`,`day`,`month`,`year`,`erp_id`,`name`,`deposit`,`recording_person_name`,`recording_person_id`,`recording_time` ) values ('$mysql_type_date','$day','$month','$year','$erp_id','$user_name','$deposit','$recording_person_name','$recording_person_id',NOW())";

				

					mysqli_query($con,$insert_sql_statement) or die(mysqli_error($con));

					if(mysqli_affected_rows($con)<>1)
					{

						$data_insertion_hampering = "Yes";
						$insert_activity_log = "INSERT INTO `activity_log` (`erp_id`,`deposit`,`final_pay`,`activity_type`,`activity_sql`,`recording_person_id`,`recording_person_name`,`day`,`month`,`year`,`recording_time`) VALUES('$erp_id','$deposit','$final_pay','Insertion Failed','".mysqli_real_escape_string($con, $insert_sql_statement)."','$recording_person_id','$recording_person_name','$day','$month','$year',NOW())";
						mysqli_query($con,$insert_activity_log) or die(mysqli_error($con));

						if(mysqli_affected_rows($con)<>1)
						{					
							$data_insertion_hampering = "Yes";					
						}
						

					}
					else{
						$activity_occured_table_row_id = mysqli_insert_id($con);
					$insert_activity_log = "INSERT INTO `activity_log` (`erp_id`,`deposit`,`final_pay`,`activity_occured_table_row_id`,`activity_type`,`activity_sql`,`recording_person_id`,`recording_person_name`,`day`,`month`,`year`,`recording_time`) VALUES('$erp_id','$deposit','$final_pay','$activity_occured_table_row_id','Insertion Successful','".mysqli_real_escape_string($con, $insert_sql_statement)."','$recording_person_id','$recording_person_name','$day','$month','$year',NOW())";
						mysqli_query($con,$insert_activity_log) or die(mysqli_error($con));

						if(mysqli_affected_rows($con)<>1)
						{					
							$data_insertion_hampering = "Yes";					
						}
						
					}

					

				}




				
			}

		}
		else{

		
			

			if($deposit_two)
			{
				

			   $select_sql_for_duplicacy_with_deposit_two="SELECT * from `set_monthly_deposit` WHERE erp_id = '$erp_id' AND 'deposit_two'='$deposit_two' AND `month`='$month' AND `year`='$year'";

				$result_for_duplicacy_with_deposit_two = mysqli_query($con,$select_sql_for_duplicacy_with_deposit_two) or die(mysqli_error($con));
				if(mysqli_num_rows($result_for_duplicacy_with_deposit_two)>0)
				{
					$data_previously_saved == "Yes";
				}
				else if( mysqli_num_rows($result_for_duplicacy_with_deposit_two) < 1)
				{ 
					$insert_sql_statement_deposit_two="INSERT INTO `set_monthly_deposit` ( `date`,`day`,`month`,`year`,`erp_id`,`name`,`deposit_two`,`deposit_two_recording_person_name`,`deposit_two_recording_person_id`,`deposit_two_recording_time` ) values ('$mysql_type_date','$day','$month','$year','$erp_id','$user_name','$deposit_two','$recording_person_name','$recording_person_id',NOW())";
					mysqli_query($con,$insert_sql_statement_deposit_two) or die(mysqli_error($con));

					if(mysqli_affected_rows($con)<>1)
					{
						$data_insertion_hampering = "Yes";
						$insert_activity_log = "INSERT INTO `activity_log` (`erp_id`,`deposit`,`deposit_two`,`final_pay`,`activity_type`,`activity_sql`,`recording_person_id`,`recording_person_name`,`day`,`month`,`year`,`recording_time`) VALUES('$erp_id','$deposit','$deposit_two','$final_pay','Insertion Failed Deposit Two','".mysqli_real_escape_string($con, $insert_sql_statement_deposit_two)."','$recording_person_id','$recording_person_name','$day','$month','$year',NOW())";
						mysqli_query($con,$insert_activity_log) or die(mysqli_error($con));
						
						
						if(mysqli_affected_rows($con)<>1)
						{					
							$data_insertion_hampering = "Yes";					
						}
						

					}
					else{
						$insert_activity_log = "INSERT INTO `activity_log` (`erp_id`,`deposit`,`deposit_two`,`final_pay`,`activity_type`,`activity_sql`,`recording_person_id`,`recording_person_name`,`day`,`month`,`year`,`recording_time`) VALUES('$erp_id','$deposit','$deposit_two','$final_pay','Insertion Successful Deposit Two','".mysqli_real_escape_string($con, $insert_sql_statement_deposit_two)."','$recording_person_id','$recording_person_name','$day','$month','$year',NOW())";
						mysqli_query($con,$insert_activity_log) or die(mysqli_error($con));
						if(mysqli_affected_rows($con)<>1)
						{					
							$data_insertion_hampering = "Yes";					
						}
						
					}
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
