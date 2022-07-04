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

date_default_timezone_set("Asia/Dhaka");
$date_new =  date("d-m-Y");

$splitted_date = explode('-',$date_new);
$current_day = $splitted_date[0];
$current_month = $splitted_date[1];
$current_year = $splitted_date[2];


$erp_id = $_POST['erp_id'];
$month = $_POST['month']; 
$year = $_POST['year'];
$deposit = $_POST['deposit'];
$final_pay = $_POST['final_pay'];




mysqli_query($con,"BEGIN");
mysqli_query($con,"START TRANSACTION") or die(mysqli_error($con));
//in loop

$select_sql_for_duplicacy="SELECT * from `set_monthly_deposit` where `erp_id`= '$erp_id' AND `month`='$month' AND `year`='$year' AND `deposit` = '$deposit'";

 $result = mysqli_query($con,$select_sql_for_duplicacy) or die(mysqli_error($con));

if(mysqli_num_rows($result)>0)
{

    
    $update_sql_statement="UPDATE `set_monthly_deposit` SET `final_pay`='$final_pay',`final_pay_recording_person`='$recording_person_name',`final_pay_recording_time`= NOW() WHERE `erp_id`= '$erp_id' AND `month` = '$month' AND `year` = '$year'";
    mysqli_query($con,$update_sql_statement) or die(mysqli_error($con));
	

	if(mysqli_affected_rows($con)<>1)
	{

		$data_insertion_hampering = "Yes";
		$insert_activity_log = "INSERT INTO `activity_log` (`erp_id`,`deposit`,`final_pay`,`activity_occured_table_row_id`,`activity_type`,`activity_sql`,`recording_person_id`,`recording_person_name`,`day`,`month`,`year`,`recording_time`) VALUES('$erp_id','$deposit','$final_pay','$activity_occured_table_row_id','Updating Failed','".mysqli_real_escape_string($con, $update_sql_statement)."','$recording_person_id','$recording_person_name','$current_day','$current_month','$current_year',NOW())";
		mysqli_query($con,$insert_activity_log) or die(mysqli_error($con));

		if(mysqli_affected_rows($con)<>1)
		{					
			$data_insertion_hampering = "Yes";					
		}
	}
	else{
		$activity_occured_table_row_id = mysqli_insert_id($con);
		$insert_activity_log = "INSERT INTO `activity_log` (`erp_id`,`deposit`,`final_pay`,`activity_occured_table_row_id`,`activity_type`,`activity_sql`,`recording_person_id`,`recording_person_name`,`day`,`month`,`year`,`recording_time`) VALUES('$erp_id','$deposit','$final_pay','$activity_occured_table_row_id','Updating Successful','".mysqli_real_escape_string($con, $update_sql_statement)."','$recording_person_id','$recording_person_name','$current_day','$current_month','$current_year',NOW())";
		mysqli_query($con,$insert_activity_log) or die(mysqli_error($con));

		if(mysqli_affected_rows($con)<>1)
		{					
			$data_insertion_hampering = "Yes";					
		}

	}
	$data_previously_saved="Yes";

}

else if( mysqli_num_rows($result) < 1)
{ 


    echo "User advance data not avaiable";
}


if($data_previously_saved == "Yes")
{
    mysqli_query($con,"COMMIT");

	mysqli_query($con,"ROLLBACK");
	echo "Data Sucessfully Updated.";

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
