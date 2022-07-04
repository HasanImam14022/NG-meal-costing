<?php
error_reporting(0);
session_start();
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();

date_default_timezone_set("Asia/Dhaka");
$date =  date("d-m-Y");

$splitted_date = explode('-',$date);
$day = $splitted_date[0];
$month = $splitted_date[1];
$year = $splitted_date[2];

$per_meal_cost = 50;
 
?>
<script type='text/javascript' src='settings/set_active_user_form_validation.js'></script>

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
          url: 'report/month_and_year_wise_change_monthly_report.php',
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


 function sending_data_of_set_active_user_for_form_for_saving_in_database()
 {

  // alert(document.getElementById('customer_name').value);
// var validate = Form_Validation();
    
     var validate = true;
      var url_encoded_form_data = $("#set_active_user_form").serialize(); //This will read all control elements value of the form 
      
       if(validate != false)
     {


         $.ajax({
          url: 'user/set_active_user_saving.php',
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

 }//End of function sending_data_of_test_method_for_customer_form_for_saving_in_database()

/***************************************************** FOR AUTO COMPLETE********************************************************************/

$('.test_method_for_customer').chosen();


/***************************************************** FOR AUTO COMPLETE********************************************************************/
  

</script>


<div class="col-sm-12 col-md-12 col-lg-12">

  

    <div class="panel panel-default"> <!-- This div will create a block/panel for FORM -->

        <div class="panel-heading" style="color:#191970;"><b>Monthly Bill Report</b></div> <!-- This will create a upper block for FORM (Just Beautification) -->

        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item active" aria-current="page">Home</li>
              <li class="breadcrumb-item"><a onclick="load_page('user/monthly_bill_report.php')">Monthly Bill Report</a></li>
            </ol>
         </nav>



        <form class="form-horizontal" action="" style="margin-top:10px;" name="set_active_user_form" id="set_active_user_form">

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
                                <option select="selected" value="<?php echo $year?>"><?php echo $year?></option>
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
                                    <option select="selected" value="<?php echo $month?>"><?php 
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
                                    
                                    
                                    
                                    ?></option>
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
                          

                            <label class="col-sm-offset-7 control-label col-sm-1" for="search">Search</label>

                            <div class="col-sm-4">
                               <input type="text" id="my_input" class="form-control " onkeyup="my_function()" placeholder="Search By ERP ID">
                             </div>

                        </div> <!-- End of <div class="form-group form-group-sm" -->
                        <div class="form-group form-group-sm" id="form-group_for_test_method_name">


                          <div class="col-sm-2">
                           <!-- For spacing -->
                           </div>
                           <div id="element">
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
                                </table>
                              
                            </div> <!-- End of <div class="col-sm-6"> -->
                           </div>    

                      <table class="table">
                            <thead>
                                <tr>
                                    <td style="text-align: center; font-size: 15px; color: red; font-weight: bold; padding: 0;">
                                    <!-- ** All Quantity is in cm. ** -->  <button id="excel_button" class="btn btn-success"><a id="downloadLink" onclick="exportF(this)" style="color: white;">Export to excel</a></button>
                                    </td>
                                    
                                </tr>
                            </thead>
                        </table>
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
       </script>
          

          


        </form>  <!-- End of <form class="form-horizontal" action="" style="margin-top:10px;" name="test_method_for_customer_form" id="test_method_for_customer_form"> -->

        
     </div>  <!--  end of <div class="form-group form-group-sm"> -->


</div> <!-- End of <div class="col-sm-12 col-md-12 col-lg-12"> -->

<script>

function exportF(elem) {
    var table = document.getElementById("exel_element");
    var html = table.innerHTML;
    var url = 'data:application/vnd.ms-excel,' + escape(html); // Set your html table into url 
    elem.setAttribute("href", url);
    elem.setAttribute("download", "monthly_report.xls"); // Choose the file name
    return false;
}
</script>