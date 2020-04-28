<?php
    include_once('../connection.php');
    session_start();
    //password
    $pw = $connection->real_escape_string($_POST['newpass']);
    $Id = $connection->real_escape_string($_POST['emp_id']);
    // //non-admin var
    // $Id = $connection->real_escape_string($_POST['id']);
    // $College = $connection->real_escape_string($_POST['college']);
    // $Type = $connection->real_escape_string($_POST['type']);
    // //admin var
    // $a_Id = $connection->real_escape_string($_POST['a_id']);
    // $a_College = $connection->real_escape_string($_POST['a_college']);
    

    // echo $Id.$College.$a_College.$a_Id;
    // if($College == "HRDO"){
    //     $updatesubHRDO = mysqli_query($connection,"UPDATE accounts SET `Type` = 'sub-admin' WHERE `emp_id` = '$Id'");
    //     $updatenonsubHRDO = mysqli_query($connection,"UPDATE accounts SET `Type` = 'non-admin' WHERE `College` = 'HRDO' && `Type` = 'sub-admin'");
    // }
    // else{
    //     $UpdateNonAdmin = mysqli_query($connection,"UPDATE accounts SET `Type` = 'admin', `empl_password`='$pw' Where `emp_id` = '$Id'");
    //     $UpdateAdmin =  mysqli_query($connection,"UPDATE accounts SET `Type` = 'non-admin' Where `emp_id` = '$a_Id'");
    // }
    $selectadmin = "SELECT emp_id,College,`Type` FROM accounts WHERE `Type` = 'admin' && College = 'HRDO'";
    $result = mysqli_query($connection,$selectadmin);
    $row = mysqli_fetch_array($result);
    $empid = $row['emp_id'];
    $updatenonadmintoadmin = mysqli_query($connection,"UPDATE accounts SET `Type` = 'admin', `empl_password` = '$pw' WHERE `emp_id` = '$Id'");
    $updateadmintononadmin = mysqli_query($connection,"UPDATE accounts SET `Type` = 'non-admin' WHERE `emp_id` = '$empid'");
    session_destroy();
    header("location: ../index.php");
    
?>