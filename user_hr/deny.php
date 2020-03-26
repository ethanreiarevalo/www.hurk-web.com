<?php
    session_start();
    include_once('../connection.php');
    $leaverequestID = $_POST['lr_ID'];
    $leaverequestEmployeeID = $_POST['lr_EID'];
    $superVisor= $_POST['lr_super'];
    $remarks = $_POST['lr_remarks'];
    //test
    // echo $leaverequestID;

    $dapproveRequest = mysqli_query($connection, "Update leaverequest set `hr_status` = 'Disapproved', `hr_remarks` = '$remarks' where `leaverequestID` = '$leaverequestID'");
    // $supervisor = "Select emp_id, first_name, last_name, email_add from tbl_emp_info where emp_id = '$superVisor'";
    // $super_result = mysqli_query($connection,$supervisor);
    //     $row = mysqli_fetch_array($super_result);
    //     if($row['emp_id']==$superVisor){
    //         $name = $row['first_name']." ".$row['last_name'];
            
    //     }
    //     else{
    //         echo "failed";
    //     }
    
    $approvedMail = "Select emp_id, first_name, last_name, email_add from tbl_emp_info where emp_id = '$leaverequestEmployeeID'";
            $result = mysqli_query($connection,$approvedMail);
            $row = mysqli_fetch_array($result);
            if($row['emp_id']==$leaverequestEmployeeID){
                $email_add = $row['email_add'];
                $to = $row['email_add'];
                $subject = "Hurk Leave Request";
                $msg = "Your leave request have been disapproved by the HRDO due to ".$remarks;
                $headers = "From: HuRKKiosk@gmail.com";
                
                mail($to,$subject,$msg,$headers);
                
            }
            else{
                echo "failed";
            }
    header("Location: request.php");
?>