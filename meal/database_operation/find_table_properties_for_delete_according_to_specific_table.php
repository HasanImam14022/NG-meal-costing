<?php
    session_start();
    include('../login/db_connection_class.php');
    $obj = new DB_Connection_Class();
    $obj->connection();



   $table_name = $_POST['table_name'];



?>

<table id="datatable-buttons" class="table table-striped table-bordered">
        <thead>
            <tr>
                <th class="text-center">Existing Columns</th>
                <?php
                    $sql_for_table_columns = "SELECT `COLUMN_NAME` FROM `INFORMATION_SCHEMA`.`COLUMNS` WHERE `TABLE_SCHEMA`='meal_management' AND `TABLE_NAME`='$table_name'";
                    $res_for_table_columns = mysqli_query($con,$sql_for_table_columns);
                    

                    while($row_for_table_columns = mysqli_fetch_assoc( $res_for_table_columns))
                    {
                
                ?>
                    <th class="text-center"><?php echo $row_for_table_columns['COLUMN_NAME']; ?></th>
                    <?php
                    } 
                    ?>
            </tr>
        </thead>  
</table>  

<div class="form-group form-group-sm" id="form-group_for_table_name">
<label class="control-label col-sm-3" for="country_of_origin" style="margin-right:0px; color:#00008B;">Create Column After :</label>
    <div class="col-sm-3">
        <select  class="form-control" id="column_name" name="column_name">
                    <option select="selected" value="select">Select Column After</option>
                    <?php 
                        $sql = "SELECT `COLUMN_NAME` FROM `INFORMATION_SCHEMA`.`COLUMNS` WHERE `TABLE_SCHEMA`='meal_management' AND `TABLE_NAME`='$table_name'";
                        $result= mysqli_query($con,$sql) or die("database connection error");
                        while( $row = mysqli_fetch_array( $result))
                        {

                            echo '<option value="'.$row['COLUMN_NAME'].'">'.$row['COLUMN_NAME'].'</option>';

                        }

                    ?>
        </select>
    </div>
</div>

<div class="form-group form-group-sm">
        <div class="col-sm-offset-3 col-sm-5">
            <button type="button" class="btn btn-primary" onClick="sending_data_delete_column_table_form_database()">Submit</button>
            <button type="reset" class="btn btn-success">Reset</button>
        </div>
</div>


