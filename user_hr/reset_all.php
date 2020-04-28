<?php
     session_start();
     include_once('../connection.php');

     $reset = mysqli_query($connection, "UPDATE tbl_emp_info SET `ml_bal` = 10, `spl_bal` = 10");

     header("Location: reset.php");
?>