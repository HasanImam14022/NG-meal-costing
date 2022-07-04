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


                 <div class="col-sm-8" id="exel_element">
                            <table id="datatable-buttons" class="table table-striped table-bordered">
                            <thead>
                              <tr>
                                <th>SI</th>
                                <th>User Name</th>
                                <th>ERP ID</th>
                                <th>Total Meal</th>
                                <th>Per Meal Cost</th>
                                <th>Total Cost</th>
                                <th>Advance</th>
                                <th>Advance/Due</th>
                                <th>Final Payment</th>
                                <th>Status</th>
                                

                              </tr>
                            </thead>
                            
                            <tbody>

                              <?php                                
                                $s1 = 1;
               
                                $customer_name_check= $row['customer_name'] ;
                                $sql_for_test_method_name = "SELECT ui.user_name, ui.user_id,smd.deposit,smd.deposit_two,SUM(sau.count) AS total_meal,smd.final_pay
                                FROM user_info ui 
                               INNER JOIN set_monthly_deposit smd ON ui.user_id = smd.erp_id
                               INNER JOIN set_active_user sau ON sau.erp_id = smd.erp_id
                               WHERE sau.month = '$month' AND sau.year = '$year' AND smd.month = '$month' AND smd.year = '$year'
                               GROUP BY sau.erp_id
                                ";
                                $res_for_test_method_name = mysqli_query($con, $sql_for_test_method_name);

                                while ($row = mysqli_fetch_assoc($res_for_test_method_name)) 
                                {
                                 
                              ?>
                              <tr class="text-center">
                                <td><?php echo $s1 ?></td>                             
                                <td><?php echo $row['user_name'] ?></td>                              
                                <td><?php echo $row['user_id']?></td>
                                <td><?php echo $row['total_meal'] ?></td>                              
                                <td><?php echo $per_meal_cost ?></td>
                                <td><?php echo ($row['total_meal'] * $per_meal_cost) ?></td>                              
                                <td><?php echo $row['deposit'] + $row['deposit_two'] ?></td>
                                
                                <td><?php echo ($row['total_meal'] * $per_meal_cost) -  $row['deposit'] - $row['deposit_two'] - $row['final_pay'] ?></td> 
                                <td><?php echo $row['final_pay'] ?></td>
                                <td>
                                   <?php 
                                       $final_cost = ($row['total_meal'] * $per_meal_cost) -  $row['deposit'] - $row['deposit_two'] - $row['final_pay'];
                                       if($final_cost == 0) 
                                       {
                                        ?>
                                           <button class="btn btn-success btn-xs" disabled>Closed</button>
                                        <?php
                                       }
                                       else if($final_cost > 0) 
                                       {
                                        ?>
                                           <button class="btn btn-danger btn-xs" disabled>Receiveable</button>
                                        <?php
                                       }
                                       else if($final_cost < 0) 
                                       {
                                        ?>
                                           <button class="btn btn-primary btn-xs" disabled>Due</button>
                                        <?php
                                       }
                                    ?>

                                </td>                             
                                
                                
                                  
                                 
                              </tr>
                              <?php 
                      

                                ++$s1;
                               }

                              ?>
                              
                            </tbody>
                          
                      </div> 
