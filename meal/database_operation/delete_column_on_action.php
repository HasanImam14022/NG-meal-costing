<?php
    session_start();
    include('../login/db_connection_class.php');
    $obj = new DB_Connection_Class();
    $obj->connection();

    $table_name = $_POST['table_name'];
    $column_name = $_POST['column_name'];

    echo $sql_deleting_column = "ALTER TABLE $table_name DROP COLUMN $column_name";
    mysqli_query($con,$sql_deleting_column);

?>
