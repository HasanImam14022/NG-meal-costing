<?php
    session_start();
    include('../login/db_connection_class.php');
    $obj = new DB_Connection_Class();
    $obj->connection();

    $table_name = $_POST['table_name'];
    $column_name = $_POST['column_name'];
    $data_type = $_POST['data_type'];
    $new_column_name = $_POST['new_column_name'];
    $column_length = $_POST['column_length'];


   


     $sql_adding_column = "ALTER TABLE $table_name ADD $new_column_name $data_type($column_length) NOT NULL AFTER $column_name";
     mysqli_query($con,$sql_adding_column);



?>
