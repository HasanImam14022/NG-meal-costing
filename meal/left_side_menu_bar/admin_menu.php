<?php
session_start();
require_once("login/db_session_chk.php");

$user_name=$_SESSION['user_name'];
$user_id=$_SESSION['user_id'];
$user_type=$_SESSION['user_type'];
$select_sql_for_user="SELECT `profile_picture` FROM `user_login` WHERE `user_name`='$user_name'";
$result= mysqli_query($con, $select_sql_for_user) or die(mysqli_error($con));
$row=mysqli_fetch_assoc($result);
?>

<!-- <style>
.sub_menu   
{
	display:block;
	margin:1px;
	width:110%;
	
	background-color:#0C2D48; 
	color:#FFFFFF; 
	border-style: dotted;
	border-color: green; 
	margin-top:2px;

}


</style> -->

<script>


	/********************User Menu*********************/
	function change_create_user_button_color() {
		

		$('#create_user_list').css('background', 'black');
		$('#user_list').css('background', 'none');
		$('#active_user').css('background', 'none');
		$('#monthly_deposit').css('background', 'none');
		$('#monthly_bill_report').css('background', 'none');
		$('#department_info').css('background', 'none');
		$('#designation_info').css('background', 'none');
		$('#add_new_column_on_database_table').css('background', 'none');
		$('#delete_column_on_database_table').css('background', 'none');

		


		load_page('user/user_info.php');
	}
	function change_create_button_color() {
		$('#create_user_list').css('background', 'none');
		$('#user_list').css('background', 'black');
		$('#active_user').css('background', 'none');
		$('#monthly_deposit').css('background', 'none');
		$('#monthly_bill_report').css('background', 'none');
		$('#department_info').css('background', 'none');
		$('#designation_info').css('background', 'none');
		$('#add_new_column_on_database_table').css('background', 'none');
		$('#delete_column_on_database_table').css('background', 'none');



		load_page('user/user_list.php');
	}


	function change_department_info_button_color() {
		$('#create_user_list').css('background', 'none');
		$('#user_list').css('background', 'none');
		$('#active_user').css('background', 'none');
		$('#monthly_deposit').css('background', 'none');
		$('#monthly_bill_report').css('background', 'none');
		$('#department_info').css('background', 'black');
		$('#designation_info').css('background', 'none');
		$('#add_new_column_on_database_table').css('background', 'none');
		$('#delete_column_on_database_table').css('background', 'none');



		load_page('user/department_info.php');
	}

	function change_designation_info_button_color() {
		$('#create_user_list').css('background', 'none');
		$('#user_list').css('background', 'none');
		$('#active_user').css('background', 'none');
		$('#monthly_deposit').css('background', 'none');
		$('#monthly_bill_report').css('background', 'none');
		$('#department_info').css('background', 'none');
		$('#designation_info').css('background', 'black');
		$('#add_new_column_on_database_table').css('background', 'none');
		$('#delete_column_on_database_table').css('background', 'none');



		load_page('user/designation_info.php');
	}

	

	/********************Set Daily Meal Menu*********************/

	function change_active_user_button_to_set_active_user()
	{
		$('#create_user_list').css('background', 'none');
		$('#user_list').css('background', 'none');
		$('#active_user').css('background', 'black');
		$('#monthly_deposit').css('background', 'none');
		$('#monthly_bill_report').css('background', 'none');
		$('#department_info').css('background', 'none');
		$('#designation_info').css('background', 'none');
		$('#add_new_column_on_database_table').css('background', 'none');
		$('#delete_column_on_database_table').css('background', 'none');


		load_page('set_daily_meal/set_active_user.php');
	}


	/********************Set Monthly Menu*********************/

	function change_monthly_deposit_button_to_set_monthly_deposit(){
		$('#create_user_list').css('background', 'none');
		$('#user_list').css('background', 'none');
		$('#active_user').css('background', 'none');
		$('#monthly_deposit').css('background', 'black');
		$('#monthly_bill_report').css('background', 'none');
		$('#department_info').css('background', 'none');
		$('#designation_info').css('background', 'none');
		$('#add_new_column_on_database_table').css('background', 'none');
		$('#delete_column_on_database_table').css('background', 'none');


		load_page('monthly_deposit/set_monthly_deposit.php');

	}


	/********************Report Menu*********************/

	function change_monthly_monthly_bill_report_button()
	{
		$('#create_user_list').css('background', 'none');
		$('#user_list').css('background', 'none');
		$('#active_user').css('background', 'none');
		$('#monthly_deposit').css('background', 'none');
		$('#monthly_bill_report').css('background', 'black');
		$('#department_info').css('background', 'none');
		$('#designation_info').css('background', 'none');
		$('#add_new_column_on_database_table').css('background', 'none');
		$('#delete_column_on_database_table').css('background', 'none');

	

		load_page('report/monthly_bill_report.php');
	}

	function operation_on_database_table_fun()
	{
		$('#create_user_list').css('background', 'none');
		$('#user_list').css('background', 'none');
		$('#active_user').css('background', 'none');
		$('#monthly_deposit').css('background', 'none');
		$('#monthly_bill_report').css('background', 'none');
		$('#department_info').css('background', 'none');
		$('#designation_info').css('background', 'none');
		$('#add_new_column_on_database_table').css('background', 'black');
		$('#delete_column_on_database_table').css('background', 'none');

		

		load_page('database_operation/add_new_column_on_database_table_form.php');
	}

    function delete_a_column_from_database_table_fun()
	{
		
		$('#create_user_list').css('background', 'none');
		$('#user_list').css('background', 'none');
		$('#active_user').css('background', 'none');
		$('#monthly_deposit').css('background', 'none');
		$('#monthly_bill_report').css('background', 'none');
		$('#department_info').css('background', 'none');
		$('#designation_info').css('background', 'none');
		$('#add_new_column_on_database_table').css('background', 'none');
		$('#delete_column_on_database_table').css('background', 'black');
       
		load_page('database_operation/delete_a_column_from_database.php');
		

	}


	



	

	function onlcick_problem()
	{
		alert("Please make sure double click for open chart");
	}

</script>
<style>
	.sidepanel  {
  width: 0;
  position: fixed;
  z-index: 1;
  height: 250px;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
}

.sidepanel a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 25px;
  color: #818181;
  display: block;
  transition: 0.3s;
}

.sidepanel a:hover {
  color: #f1f1f1;
}

.sidepanel .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
}

.openbtn {
  font-size: 20px;
  cursor: pointer;
  background-color: #111;
  color: white;
  padding: 10px 15px;
  border: none;
}

.openbtn:hover {
  background-color:#444;
}
</style>
<!-- <div>
	<button type="button" class="openbtn" onclick="openNav()">☰ </button>  		
</div> -->

<script>
// function openNav() {
//   document.getElementById("mySidepanel").style.width = "250px";
// }

// function closeNav() {
//   document.getElementById("mySidepanel").style.width = "0";
// }
</script>

<!-- <div id="mySidepanel" class="sidepanel"> -->
<!-- <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a> -->

	<div class="col-sm-3 col-md-3 col-lg-3" style="background-color:#0C2D48; min-height:100%; width: 15%;">									
		<h3>
			<span class="text-primary" style="color:#FFFFFF">Noman Group</span>
		</h3>
									
		<!-- <img src="img/8571-1.JPG" style="width: 30px; height:30px; margin-bottom: 4px; background: #ffffff;" class="img-circle" alt="100x100"> -->
		<img src="img/<?php echo $row['profile_picture'] ?>" alt="..." class="img-circle profile_img" style="width: 30px; height:30px; margin-bottom: 4px; background: #ffffff;">

		<span class="text-primary" style="color:#FFFFFF; margin-left:5px;">Welcome, <?php echo $user_name;?></span>
		<br/>
		<span class="text-primary" style="color:#FFFFFF; margin-left:5px;"><?php echo $user_type;?> View</span>

		<!-- Add All Your Left Side Menu=>Submenu From Here in Accordion Menu -->
										
		<div id="accordion" class="accordion_menu">
			<h3 style="font-size: 13px; color:#FFFFFF; background:none;"><span class="glyphicon glyphicon-user"></span>&nbsp;User </h3>
			<div style="padding-left:7px;">
				<button class="sub_menu panel text-left"  onclick="change_create_user_button_color()" id='create_user_list'><span  style="font-size: 11px;" >Create User</span></button>
				<button class="sub_menu panel text-left" onclick="change_create_button_color()" id='user_list'><span style="font-size: 11px;">User List</span></button>
				<button class="sub_menu panel text-left" onclick="change_department_info_button_color()" id="department_info"><span style="font-size: 11px;">Department Info</span></button>
				<button class="sub_menu panel text-left" onclick="change_designation_info_button_color()" id="designation_info"><span style="font-size: 11px;">Designation Info</span></button>

			</div>
			

			<h3 style="font-size: 13px; color:#FFFFFF; background:none;">Monthly Deposit</h3>
			<div style="padding-left:7px;">
			  
			    <button class="sub_menu panel text-left" onclick="change_monthly_deposit_button_to_set_monthly_deposit()" id="monthly_deposit"><span style="font-size: 11px;">Set Monthly Deposite</span></button>
				
			
			</div>

			<h3 style="font-size: 13px; color:#FFFFFF; background:none;">Set Daily Meal</h3>
			<div style="padding-left:7px;">
			
				<button class="sub_menu panel text-left" onclick="change_active_user_button_to_set_active_user()" id="active_user"><span style="font-size: 11px;">Set Active List</span></button>
			
			</div>


			


			<h3 style="font-size: 13px; color:#FFFFFF; background:none;">Report</h3>
			<div style="padding-left:7px;">
				
			<button class="sub_menu panel text-left" onclick="change_monthly_monthly_bill_report_button()" id="monthly_bill_report"><span style="font-size: 11px;">Monthly Bill Report</span></button>
			
			</div>

			<h3 style="font-size: 13px; color:#FFFFFF; background:none;">Database Operation</h3>
			<div style="padding-left:7px;">
				
			  <button class="sub_menu panel text-left" onclick="operation_on_database_table_fun()" id="add_new_column_on_database_table"><span style="font-size: 11px;">Add New Column On Database</span></button>
			  <button class="sub_menu panel text-left" onclick="delete_a_column_from_database_table_fun()" id="delete_column_on_database_table"><span style="font-size: 11px;">Delete Column On Database</span></button>
			  
			
			</div>

			


			

				

		</div> <!-- End of <div id="accordion"> -->
	</div> <!--End of <div class="col-sm-3 col-md-3 col-lg-3" style="background-color:#add8e6; height:100%;"> -->
<!-- </div>	 -->

