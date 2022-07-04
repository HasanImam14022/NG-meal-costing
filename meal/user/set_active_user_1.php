<?php
error_reporting(0);
session_start();
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();

date_default_timezone_set("Asia/Dhaka");
$date =  date("d-m-Y");
 
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
 function sending_data_of_set_active_user_for_form_for_saving_in_database()
 {

  // alert(document.getElementById('customer_name').value);

     //  var validate = Form_Validation();
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

        <div class="panel-heading" style="color:#191970;"><b>Active Meal Consumer</b></div> <!-- This will create a upper block for FORM (Just Beautification) -->

        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item active" aria-current="page">Home</li>
              <li class="breadcrumb-item"><a onclick="load_page('settings/set_active_user.php')">Set Active Meal Consumer</a></li>
            </ol>
         </nav>



        <form class="form-horizontal" action="" style="margin-top:10px;" name="set_active_user_form" id="set_active_user_form">

          <div class="form-group form-group-sm" id="form-group_for_date">
            <label class="control-label col-sm-3" for="date" style="margin-right:0px; color:#00008B;">Date:</label>
              <div class="col-sm-6">
                  <div class="col-sm-5" style="padding-right: 0">
                        <input type="text" id="date" class="form-control" name="date" value="<?php echo $date?>" placeholder="<?php echo $date?>">
                    </div>

                    <div class="col-sm-1" style="padding-left: 0px">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                    </div>

                 </div>

                           <script>
                            
                                $( function() 
                                {
                                    $( "#date" ).datepicker({ dateFormat: 'd-M-yy' });
                                } );
                            </script>
                 
              
      

            </div>  <!-- end of <div class="form-group form-group-sm" id="form-group_for_customer_name"> -->
                            <br> 
                   
                         
                             <br>

            <div class="panel panel-default">

                          <div class="form-group form-group-sm">
                          

                            <label class="col-sm-offset-7 control-label col-sm-1" for="search">Search</label>

                            <div class="col-sm-4">
                               <input type="text" id="my_input" class="form-control " onkeyup="my_function()" placeholder="Search Here">
                             </div>

                        </div> <!-- End of <div class="form-group form-group-sm" -->
                        <div class="form-group form-group-sm" id="form-group_for_test_method_name">


                          <div class="col-sm-3">
                           <!-- For spacing -->
                           </div>
                          <div class="col-sm-6">
                            <table id="datatable-buttons" class="table table-striped table-bordered">
                            <thead>
                              <tr>
                                <th>SI</th>
                                <th>User name</th>
                                <th>User Id</th>
                                <th>Active status</th>

                              </tr>
                            </thead>
                            
                            <tbody>

                              <?php                                
                                $s1 = 1;
               
                                $customer_name_check= $row['customer_name'] ;
                                $sql_for_test_method_name = "SELECT * FROM user_info WHERE status = 'active'";
                                $res_for_test_method_name = mysqli_query($con, $sql_for_test_method_name);

                                while ($row = mysqli_fetch_assoc($res_for_test_method_name)) 
                                {
                                 
                              ?>
                              <tr>
                                <td><?php echo $s1 ?></td>                             
                                <td><?php echo $row['user_name'] ?></td>
                                <td><?php echo $row['user_id']?></td>

                                <td> <input id="test_method_name" class="form-check-input" type="checkbox"  name="active_status[]" value="<?php echo $row['user_name'].'fs'.$row['user_id'];?>" checked></td> 
                                  
                                 
                              </tr>
                              <?php 
                                ++$s1;
                               }

                              ?>
                              
                            </tbody>
                          </table>
                        </div> <!-- End of <div class="col-sm-6"> -->
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
                    td = tr[i].getElementsByTagName("td")[0];
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
          

            <!-- <div class="form-group form-group-sm" id="form-group_for_test_method_name"> -->
            
                <!-- <input type="checkbox" class="form-check-input"  value="ISO-1044" id="test_method_name" name="test_method_name[]">
                <label class="form-check-label control-label" for="test_method_name" style="margin-right:15px;">ISO-1044</label>
                <input type="checkbox" class="form-check-input"  value="ISO 105 X12" id="test_method_name" name="test_method_name[]">
                <label class="form-check-label control-label" for="test_method_name" style="margin-right:15px;">ISO 105 X12</label>
                <input type="checkbox" class="form-check-input"  value="ISO-1456" id="test_method_name" name="test_method_name[]">
                <label class="form-check-label control-label" for="test_method_name" style="margin-right:15px;">ISO-1456</label>
                <i class="glyphicon glyphicon-remove" onclick="Reset_Checkbox(document.test_method_for_customer_form.test_method_name)"></i> -->

            
            
            <div class="form-group form-group-sm">
                <div class="col-sm-offset-3 col-sm-5">
                  <button type="button" class="btn btn-primary" onClick="sending_data_of_set_active_user_for_form_for_saving_in_database()">Submit</button>
                  <button type="reset" class="btn btn-success">Reset</button>
                  
                     </div>
              </div>

                        <br/>
          
                        <br/>


        </form>  <!-- End of <form class="form-horizontal" action="" style="margin-top:10px;" name="test_method_for_customer_form" id="test_method_for_customer_form"> -->

        
     </div>  <!--  end of <div class="form-group form-group-sm"> -->


</div> <!-- End of <div class="col-sm-12 col-md-12 col-lg-12"> -->