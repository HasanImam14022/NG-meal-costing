<?php
    session_start();
    include('../login/db_connection_class.php');
    $obj = new DB_Connection_Class();
    $obj->connection();



?>
<script>
function find_table_properties()
{

    var table_name = document.getElementById('table_name').value;


 
    $.ajax({

          

          url: 'database_operation/find_table_properties_according_to_specific_table.php',
          dataType: 'text',
          type: 'post',
          contentType: 'application/x-www-form-urlencoded',
          data: {table_name: table_name},
          success: function( data, textStatus, jQxhr )
          {
              //alert(data);
              document.getElementById("place_holder").innerHTML = data;
          },
          error: function( jqXhr, textStatus, errorThrown )
          {
              //console.log( errorThrown );
              alert(errorThrown);
          }
       }); // End of $.ajax({
  

}

function sending_data_of_add_new_column_table_form_for_saving_in_database()
{
    
    var table_name = document.getElementById('table_name').value;

    var column_name = document.getElementById('column_name').value;
    
    var data_type = document.getElementById('data_type').value;
    
    var new_column_name = document.getElementById('new_column_name').value;
    
    var column_length = document.getElementById('column_length').value;


    $.ajax({
                url: 'database_operation/adding_new_column_in_database.php',
                dataType: 'text',
                type: 'post',
                contentType: 'application/x-www-form-urlencoded',
                data: {table_name: table_name,column_name:column_name,data_type:data_type,new_column_name:new_column_name,column_length:column_length},
                success: function( data, textStatus, jQxhr )
                {
                    alert(data);
                    //document.getElementById("place_holder").innerHTML = data;
                },
                error: function( jqXhr, textStatus, errorThrown )
                {
                    //console.log( errorThrown );
                    alert(errorThrown);
                }
            });
    

}

</script>

<div class="col-sm-12 col-md-12 col-lg-12">

  

    <div class="panel panel-default"> 

               <div class="panel-heading" style="color:#191970;"><b>Add New Column On Database</b></div> <!-- This will create a upper block for FORM (Just Beautification) -->

                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                    <li class="breadcrumb-item active" aria-current="page">Home</li>
                    <li class="breadcrumb-item"><a onclick="load_page('database_operation/add_new_column_on_database_table_form.php')">Add New Column On Database Table</a></li>
                    </ol>
                </nav>


               <form class="form-horizontal" action="" style="margin-top:10px;" name="add_new_column_on_database_table_form" id="add_new_column_on_database_table_form">

                    <div class="panel panel-default">
    
                        <div class="form-group form-group-sm">

                           

                                <div class="form-group form-group-sm" id="form-group_for_table_name">
                                <label class="control-label col-sm-3" for="country_of_origin" style="margin-right:0px; color:#00008B;">Tables :</label>
                                    <div class="col-sm-3">
                                        <select  class="form-control" id="table_name" name="table_name" onchange="find_table_properties()">
                                                    <option select="selected" value="select">Select Table</option>
                                                    <?php 
                                                        $sql = "SELECT table_name FROM information_schema.tables
                                                        WHERE table_schema = 'meal_management'";
                                                        $result= mysqli_query($con,$sql) or die("database connection error");
                                                        while( $row = mysqli_fetch_array( $result))
                                                        {

                                                            echo '<option value="'.$row['table_name'].'">'.$row['table_name'].'</option>';

                                                        }

                                                    ?>
                                        </select>
                                    </div>
                                </div>
                                <div  id="place_holder">
                                
                                </div>

                               
                           
                        </div>  
                    </div> 

               </form> 

        
        </div>  <!--  end of <div class="form-group form-group-sm"> -->


</div> <!-- End of <div class="col-sm-12 col-md-12 col-lg-12"> -->