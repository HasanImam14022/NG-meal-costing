<?php
session_start();
error_reporting(0);
require_once("../login/session.php");
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();

 $month = $_POST['month'];


$year = $_POST['year'];


?>

<div class="col-sm-10">
    <table id="datatable-buttons" class="table table-striped table-bordered">
    <thead>
        <tr>
        <th class="text-center">SI</th>
        <th class="text-center">User name</th>
        <th class="text-center">ERP Id</th>
        <th class="text-center">Advance1</th>
        <th class="text-center">Advance1 Recording Time</th>
        <th class="text-center">Advance2</th>
        <th class="text-center">Advance2 Recording Time</th>
        <th class="text-center">Final Payment</th>
        <th class="text-center">Final Payment Recording Time</th>
        </tr>
    </thead>
    
    <tbody>

        <?php                                
        $s1 = 1;

        //$customer_name_check= $row['customer_name'] ;
        $sql_for_test_method_name = "SELECT user_name, user_id FROM user_info WHERE status = 'active' ORDER BY user_id ASC";
        $res_for_test_method_name = mysqli_query($con, $sql_for_test_method_name);

        while ($row = mysqli_fetch_assoc($res_for_test_method_name)) 
        {
            $user_id = $row['user_id'];
            $sql_advance_and_final_pay = "SELECT * FROM set_monthly_deposit WHERE erp_id = '$user_id' AND month = '$month' AND year = '$year'";
            $res_advance_and_final_pay = mysqli_query($con, $sql_advance_and_final_pay);
            $row_advance_and_final_pay = mysqli_fetch_assoc($res_advance_and_final_pay);

            // if(isset($row_advance_and_final_pay['deposit']) && $row_advance_and_final_pay['deposit'] != "")
            // {
            //     $deposit = $row_advance_and_final_pay['deposit'];
            // }
            // else{
            //     $deposit = 0;
            // }
            // if(isset($row_advance_and_final_pay['deposit_two']) && $row_advance_and_final_pay['deposit_two'] != "")
            // {
            //     $deposit_two = $row_advance_and_final_pay['deposit_two'];
            // }
            // else{
            //     $deposit_two = 0;
            // }


            // if(isset($row_advance_and_final_pay['final_pay']) && $row_advance_and_final_pay['final_pay'] != "")
            // {
            //     $final_pay = $rorow_advance_and_final_payw['final_pay'];
            // }
            // else{
            //     $final_pay = 0;
            // }
            $deposit = $row_advance_and_final_pay['deposit'];
            $deposit_two = $row_advance_and_final_pay['deposit_two'];
            $final_pay = $row_advance_and_final_pay['final_pay'];

            
            
        $all_data = $row['user_id'].'?fs?'.$month.'?fs?'.$year.'?fs?'.$s1; 
        ?>
        <tr class="text-center">
        <td><?php echo $s1 ?></td>                             
        <td><?php echo $row['user_name'] ?></td>                              
        <td><?php echo $row['user_id']?></td>
        <?php 
            if($deposit > 0) {
            
            ?>
                <td> <input id="deposit<?php echo $s1?>" class="form-check-input text-center" style="background-color:  #ffb3b3;" type="text"  name="deposit<?php echo $s1?>" value="<?php echo $row_advance_and_final_pay['deposit'] ?>" readonly></td>
            <?php
                } else{
            ?>
                <td> <input id="deposit<?php echo $s1?>" class="form-check-input text-center" type="text"  name="deposit<?php echo $s1?>" value="<?php echo $row_advance_and_final_pay['deposit'] ?>"></td> 
            <?php 
                } 
          ?>
        <td><?php echo $row_advance_and_final_pay['recording_time']?></td>
        <td> <input id="deposit_two<?php echo $s1?>" class="form-check-input text-center" type="text"  name="deposit_two<?php echo $s1?>" value="<?php echo $row_advance_and_final_pay['deposit_two'] ?>"></td> 
        <td><?php echo $row_advance_and_final_pay['deposit_two_recording_time']?></td>
        <td><input id="final_pay<?php echo $s1?>" class="form-check-input text-center" type="text"  name="final_pay<?php echo $s1?>" value="<?php echo $row_advance_and_final_pay['final_pay'] ?>" onchange="update_final_pay('<?php echo $all_data ?>')"></td>  
        <td><?php echo $row_advance_and_final_pay['final_pay_recording_time']?></td>
        </tr> 

        </tr>
        <?php 
        ?>
            <input type="hidden" id="user_name<?php echo $s1?>" name="user_name<?php echo $s1?>" value="<?php echo $row['user_name']?>">
            <input type="hidden" id="user_id<?php echo $s1?>" name="user_id<?php echo $s1?>" value="<?php echo $row['user_id']?>">

            <input type="hidden" id="month" name="month_data" value="<?php echo $month?>">
            <input type="hidden" id="year" name="year_data" value="<?php echo $year?>">
        
        <?php

        ++$s1;
        }

        ?>
        
    </tbody>
    </table>
</div> <!-- End of <div class="col-sm-6"> -->