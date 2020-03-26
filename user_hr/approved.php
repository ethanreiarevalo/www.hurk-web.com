<?php
    session_start();
    include_once('../connection.php');
    $ID_No = $_SESSION['ID_No'];
    $leaverequestID = $_POST['lr_ID'];
    $leaverequestEmployeeID = $_POST['lr_EID'];
    $superVisor= $_POST['lr_super'];
    $leavetype = $_POST['lr_type'];
    //test
    // echo $leaverequestID;
    //update request from pending to approve
    $approveRequest = mysqli_query($connection, "Update leaverequest set `hr_status` = 'Approved', `respondedby_hr` = '$ID_No' where `leaverequestID` = '$leaverequestID'");
    //update balance
    if($leavetype == "Vacation Leave"){
        $updateBalance = mysqli_query($connection, "UPDATE tbl_emp_info set `vl_bal` = vl_bal - 1   where `emp_id` = '$leaverequestEmployeeID'");
    }
    else if($leavetype == "Sick Leave"){
        $updateBalance = mysqli_query($connection, "UPDATE tbl_emp_info set `sl_bal` = sl_bal - 1   where `emp_id` = '$leaverequestEmployeeID'");
    }
    //email employee
    $approvedMail = "Select emp_id, first_name, last_name, email_add from tbl_emp_info where emp_id = '$leaverequestEmployeeID'";
    $result = mysqli_query($connection,$approvedMail);
    $row = mysqli_fetch_array($result);
    if($row['emp_id']==$leaverequestEmployeeID){
        $email_add = $row['email_add'];
        $to = $row['email_add'];
        $subject = "Hurk Leave Request";
        $msg = "Your leave request have been approved by the HRDO";
        $headers = "From: HuRKKiosk@gmail.com";
        
        mail($to,$subject,$msg,$headers);
    }
    else{
        echo "failed";
    }

    
    header("Location: request.php");
?>