<?php
    session_start();
    include_once('../connection.php');
    $leaverequestID = $_POST['lr_ID'];
    $leaverequestEmployeeID = $_POST['lr_EID'];
    $superVisor= $_POST['lr_super'];
    $remarks = $_POST['lr_remarks'];

    //test
    // echo $leaverequestID;
    $startdate = "";
    $enddate = "";
    $leaveDetails = "SELECT * FROM leaverequest WHERE leaverequestID = '$leaverequestID'";
    $details_result = mysqli_query($connection, $leaveDetails);
    $row_details = mysqli_fetch_array($details_result);
    if($row_details['leaverequestID'] == $leaverequestID){
        $startdate = $row_details['leaverequestStartDate'];
        $enddate = $row_details['leaverequestEndDate'];
    }
    $dapproveRequest = mysqli_query($connection, "Update leaverequest set `emp_supervisor_response` = 'Disapproved', `date_approval` = '$date', `emp_supervisor_remarks` = '$remarks' where `leaverequestID` = '$leaverequestID'");
    $supervisor = "Select emp_id, first_name, last_name, email_add from tbl_emp_info where emp_id = '$superVisor'";
    $super_result = mysqli_query($connection,$supervisor);
        $row = mysqli_fetch_array($super_result);
        if($row['emp_id']==$superVisor){
            $name = $row['first_name']." ".$row['last_name'];
            $approvedMail = "Select emp_id, first_name, last_name, email_add from tbl_emp_info where emp_id = '$leaverequestEmployeeID'";
            $result = mysqli_query($connection,$approvedMail);
            $row = mysqli_fetch_array($result);
            if($row['emp_id']==$leaverequestEmployeeID){
                $email_add = $row['email_add'];
                $to = $row['email_add'];
                $subject = "Hurk Leave Request";
                $msg = "Good day!\n\nSorry to say that your leave request for the dates ".$startdate." to ".$enddate." has been DISAPPROVED by your supervisor,".$name."due to the reason ".$remarks." .\n\n Thank you for using HuRK, \n Human Resource Kiosk";
                $msg = "Your leave request have been disapproved by your supervisor, ".$name. " due to the reason ".$remarks;
                $headers = "From: HuRKKiosk@gmail.com";
                
                mail($to,$subject,$msg,$headers);
                
            }
            else{
                echo "failed";
            }
        }
        else{
            echo "failed";
        }
    
    header("Location: request.php");
?>