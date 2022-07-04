<?php
error_reporting(0);
session_start();
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();

date_default_timezone_set("Asia/Dhaka");
$date =  date("d-m-Y");
$splitted_date = explode('-',$date);
$month =(int) $splitted_date[1];
$year =(int) $splitted_date[2];

 
?>
<script type='text/javascript' src='monthly_deposit/monthly_deposit_form_validation.js'></script>

<style>

.form-group   /* This is for reducing Gap among Form's Fields */
{

  margin-bottom: 5px;

}

</style>

<script>

function change_up_down_arrow_icon_1(icon_lcation)
{
  
  
  //alert(icon_lcation);
  var class_name = $('#'+icon_lcation).attr('class');
    //alert(class_name);
  if(class_name=="glyphicon glyphicon-chevron-up text-right")
  {
    $('#'+icon_lcation).removeClass();
    $('#'+icon_lcation).addClass("glyphicon glyphicon-chevron-down text-right");
  }
  else
  {
    $('#'+icon_lcation).removeClass();
    $('#'+icon_lcation).addClass("glyphicon glyphicon-chevron-up text-right");
    
  }
  
  
} // End of function change_up_down_arrow_icon_1(icon_lcation)

function Remove_Value_Of_This_Element(element_name)
{

   document.getElementById(element_name).value='';
   var alternate_field_of_date = "alternate_"+element_name;

   if(typeof(alternate_field_of_date) != 'undefined' && alternate_field_of_date != null) // This is for deleting Alternative Field of Date if exists
   {
    document.getElementById(alternate_field_of_date).value='';
   }

}

function Reset_Radio_Button(radio_element)
{

    var radio_btn = document.getElementsByName(radio_element);
    for(var i=0;i<radio_btn.length;i++) 
    {
        radio_btn[i].checked = false;
    }


}

function Reset_Checkbox(checkbox_element)
{
    for(var i=0;i<checkbox_element.length;i++)
    {

        checkbox_element[i].checked = false;

    }
}
</script>

<script>



function get_date_change_data()
{
 
    var year = document.getElementById('year').value;
    var month = document.getElementById('month').value;

   

    $.ajax({
          url: 'monthly_deposit/month_and_year_wise_change_monthly_deposit.php',
          dataType: 'text',
          type: 'post',
          contentType: 'application/x-www-form-urlencoded',
          data: {month: month, year: year},
          success: function( data, textStatus, jQxhr )
          {
              // alert(data);
              document.getElementById("element").innerHTML = data;
          },
          error: function( jqXhr, textStatus, errorThrown )
          {
              //console.log( errorThrown );
              alert(errorThrown);
          }
       }); // End of $.ajax({
  }




  function update_final_pay(all_data)
  {
        var result = confirm("Do you want to update?");
        if (result) {

          var splitted_data = all_data.split("?fs?");
          var erp_id = splitted_data[0];
          var month = splitted_data[1];
          var year = splitted_data[2];
          var counter = splitted_data[3];
          var deposit = document.getElementById('deposit'+counter).value;
          var final_pay = document.getElementById('final_pay'+counter).value;


          $.ajax({
                url: 'monthly_deposit/update_final_payment.php',
                dataType: 'text',
                type: 'post',
                contentType: 'application/x-www-form-urlencoded',
                data: {erp_id: erp_id, month: month, year: year,deposit: deposit,final_pay: final_pay},
                success: function( data, textStatus, jQxhr )
                {
                    alert(data);
                },
                error: function( jqXhr, textStatus, errorThrown )
                {
                    //console.log( errorThrown );
                    alert(errorThrown);
                }
            }); // End of $.ajax({

            //End of if(validate != false)

      
    }

    

  }


 function sending_data_of_set_monthly_deposit_for_form_for_saving_in_database()
 {



  var result = confirm("Do you want to save?");


  if(result)
  {
    counter = document.getElementById('counter').value;
     //var validate = Form_Validation(counter);
    
      var validate = true;
      var url_encoded_form_data = $("#set_monthly_deposit_form").serialize(); //This will read all control elements value of the form 
      
       if(validate != false)
     {


         $.ajax({
          url: 'monthly_deposit/set_monthly_deposit_saving.php',
          dataType: 'text',
          type: 'post',
          contentType: 'application/x-www-form-urlencoded',
          data: url_encoded_form_data,
          success: function( data, textStatus, jQxhr )
          {
              alert(data);
          },
          error: function( jqXhr, textStatus, errorThrown )
          {
              //console.log( errorThrown );
              alert(errorThrown);
          }
       }); // End of $.ajax({

       }//End of if(validate != false)

  }



     

 }//End of function sending_data_of_test_method_for_customer_form_for_saving_in_database()

/***************************************************** FOR AUTO COMPLETE********************************************************************/

$('.test_method_for_customer').chosen();


/***************************************************** FOR AUTO COMPLETE********************************************************************/
  

</script>


<div class="col-sm-12 col-md-12 col-lg-12">

  

    <div class="panel panel-default"> <!-- This div will create a block/panel for FORM -->

        <div class="panel-heading" style="color:#191970;"><b>Monthly Deposit</b></div> <!-- This will create a upper block for FORM (Just Beautification) -->

        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item active" aria-current="page">Home</li>
              <li class="breadcrumb-item"><a onclick="load_page('monthly_deposit/set_monthly_deposit.php')">Set Monthly Deposit Amount</a></li>
            </ol>
         </nav>



        <form class="form-horizontal" action="" style="margin-top:10px;" name="set_monthly_deposit_form" id="set_monthly_deposit_form">

    
              <!--New Date Practice-->

                  <div class="form-group form-group-sm">
                      


                      <div class="col-sm-3 text-center col-sm-offset-2">
                          <label for="test_name_and_method" style="font-size:12px; color:#008000;"></label>
                          
                            
                      </div>
                    

                      <div class="col-sm-1 text-center">
                          <label for="value" style="font-size:12px; color:#008000;">Year</label>
                      </div>
                    
                      
                        
                      <div class="col-sm-1 text-center">
                            <label for="math_op_value" style="font-size:12px; color:#008000;">Month</label>
                              
                      </div>

                </div>


                <div id="div_measurement_of_carton" >


                <div class="form-group form-group-sm" >


                <div class="col-sm-3 text-center col-sm-offset-2">
                  <label class="control-label"  style="color:#00008B;"><span id="month_and_year">Select Month And Year : </span> </label>
                </div>



                <div class="col-sm-1" for="year">

                    <select  class="form-control" id="year" name="year">
                                <option select="selected" value="<?php echo $year ?>"><?php echo $year ?></option>
                                <option value="2020">2020</option>
                                <option value="2021">2021</option>
                                <option value="2022">2022</option>
                                <option value="2023">2023</option>
                                <option value="2024">2024</option>
                                <option value="2025">2025</option>
                                <option value="2026">2026</option>
                                <option value="2027">2027</option>
                                <option value="2028">2028</option>
                                <option value="2029">2029</option>
                                <option value="2030">2030</option>
                                
                    </select>

                    </div>
                        
                      
                  <div class="col-sm-1" for="month">

                        <select  class="form-control" id="month" name="month" onchange="get_date_change_data()">
                                    <option select="selected" value="<?php echo $month?>">
                                      <?php
                                          if($month == 1)
                                          {
                                           echo "January";
                                          }
                                          elseif($month == 2)
                                          {
                                           echo "February";
                                          }
                                          elseif($month == 3)
                                          {
                                              echo "March";
                                          }
                                          elseif($month == 4)
                                          {
                                           echo "April";
                                          }
                                          elseif($month == 5)
                                          {
                                              echo "May";
                                          }
                                       
                                          elseif($month == 6)
                                          {
                                           echo "June";
                                          }
                                          elseif($month == 7)
                                          {
                                              echo "July";
                                          }
                                       
                                          elseif($month == 8)
                                          {
                                           echo "August";
                                          }
                                          elseif($month == 9)
                                          {
                                              echo "September";
                                          }
                                       
                                          elseif($month == 10)
                                          {
                                           echo "Octobar";
                                          }
                                          elseif($month == 11)
                                          {
                                              echo "November";
                                          }
                                          elseif($month == 12)
                                          {
                                              echo "December";
                                          }
                                      ?>
                                    </option>
                                    <option value="1">January</option>
                                    <option value="2">February</option>
                                    <option value="3">March</option>
                                    <option value="4">April</option>
                                    <option value="5">May</option>
                                    <option value="6">June</option>
                                    <option value="7">July</option>
                                    <option value="8">August</option>
                                    <option value="9">September</option>
                                    <option value="10">Octobar</option>
                                    <option value="11">Novembar</option>
                                    <option value="12">December</option>
                        </select>
                    
                  </div>

                </div>

                </div> 


                  
              <!--New Date Practice End-->
                            <br> 
                   
                         
                             <br>

            <div class="panel panel-default">

                          <div class="form-group form-group-sm">

                          <label class="control-label col-sm-2" for="search">Set Advance1 :</label>

                          <div class="col-sm-2">
                            <input type="text" id="my_advance" name="my_advance" class="form-control " placeholder="Input advance here">
                            <input type="button" name="advance" id="advance" value="Go" class="btn btn-primary" onclick="my_advance_set()">
                          </div>

                          <label class="control-label col-sm-2" for="search">Set Advance2 :</label>

                          <div class="col-sm-2">
                            <input type="text" id="my_advance2" name="my_advance2" class="form-control " placeholder="Input advance here">
                            <input type="button" name="advance2" id="advance2" value="Go" class="btn btn-primary" onclick="my_advance2_set()">
                          </div>
                          

                            <label class="control-label col-sm-1" for="search">Search</label>

                            <div class="col-sm-2">
                               <input type="text" id="my_input" class="form-control " onkeyup="my_function()" placeholder="Search By ERP ID">
                            </div>

                        </div> <!-- End of <div class="form-group form-group-sm" -->
                          <hr>
                          <br>
                        <div class="form-group form-group-sm" id="form-group_for_test_method_name">


                          <div class="col-sm-1">
                           <!-- For spacing -->
                           </div>
                        <div id="element">
                          <div class="col-sm-10" id="exel_element">
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
                                // $sql_for_test_method_name = "SELECT ui.user_name,ui.user_id, smd.deposit,smd.final_pay FROM user_info ui LEFT JOIN set_monthly_deposit smd ON ui.user_id = smd.erp_id
                                // WHERE ui.status = 'active' AND smd.`month` = '$month' AND smd.year = '$year'";
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
                                  //     $final_pay = $row_advance_and_final_pay['final_pay'];
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
                      </div>
            </div>  <!-- End of <div class="form-group form-group-sm" id="form-group_for_test_method_name"> -->
          </div> <!-- end of  <div class="panel panel-default">   -->
          <script>
                function my_function() {
                  var input, filter, table, tr, td, i, txtValue;
                  input = document.getElementById("my_input");
                  filter = input.value.toUpperCase();
                  table = document.getElementById("datatable-buttons");
                  tr = table.getElementsByTagName("tr");
                  for (i = 0; i < tr.length; i++) {
                    td = tr[i].getElementsByTagName("td")[2];
                    if (td) {
                      txtValue = td.textContent || td.innerText;
                      if (txtValue.toUpperCase().indexOf(filter) > -1) {
                        tr[i].style.display = "";
                      } else {
                        tr[i].style.display = "none";
                      }
                    }       
                  }
                }

                function my_advance_set() {
                 
                 var data = document.getElementById("my_advance").value;                
                 var table = document.getElementById("datatable-buttons");
                 var tr = table.getElementsByTagName("tr"); 
                  for (i = 1; i < tr.length; i++) {

                    var amount_value = document.getElementById("deposit"+i).value;

                    if ( (amount_value == 0) || (amount_value == null) || (amount_value == '')) 
                    {
                        document.getElementById("deposit"+i).value = data;
                    }

                    //table.rows[i].cells[3].innerHTML = data;
                        
                  }
                }

                function my_advance2_set() {
                 
                 var data = document.getElementById("my_advance2").value;                
                 var table = document.getElementById("datatable-buttons");
                 var tr = table.getElementsByTagName("tr"); 
                  for (i = 1; i < tr.length; i++) {

                    var amount_value = document.getElementById("deposit_two"+i).value;

                    if ( (amount_value == 0) || (amount_value == null) || (amount_value == '')) 
                    {
                        document.getElementById("deposit_two"+i).value = data;
                    }

                    //table.rows[i].cells[3].innerHTML = data;
                        
                  }
                }
       </script>
          


                <input type="hidden" id="counter" name="counter" value="<?php echo $s1?>">
            
            <div class="form-group form-group-sm">
                <div class="col-sm-offset-3 col-sm-5">
                  <button type="button" class="btn btn-primary" onClick="sending_data_of_set_monthly_deposit_for_form_for_saving_in_database()">Submit</button>
                  <button type="reset" class="btn btn-success">Reset</button>
                  
                     </div>
              </div>

                        <br/>
          
                        <br/>

                        <table class="table">
                             <thead>
                                <tr>
                                    <td style="text-align: center; font-size: 15px; color: red; font-weight: bold; padding: 0;">
                                    <!-- ** All Quantity is in cm. ** -->  <button id="excel_button" class="btn btn-info"><a id="downloadLink" onclick="exportF(this)" style="color: white;">Export to excel</a></button>
                                    </td>
                                    
                                </tr>
                              </thead>
                          </table>


        </form>  <!-- End of <form class="form-horizontal" action="" style="margin-top:10px;" name="test_method_for_customer_form" id="test_method_for_customer_form"> -->

        
     </div>  <!--  end of <div class="form-group form-group-sm"> -->


</div> <!-- End of <div class="col-sm-12 col-md-12 col-lg-12"> -->
<script>
  function exportF(elem) {
      var table = document.getElementById("exel_element");
      var html = table.innerHTML;
      var url = 'data:application/vnd.ms-excel,' + escape(html); // Set your html table into url 
      elem.setAttribute("href", url);
      elem.setAttribute("download", "monthly_advance.xls"); // Choose the file name
      return false;
  }
</script>