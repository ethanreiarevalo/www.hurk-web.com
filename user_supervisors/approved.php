<?php
    session_start();
    include_once('../connection.php');
    $leaverequestID = $_POST['lr_ID'];
    $leaverequestEmployeeID = $_POST['lr_EID'];
    $superVisor= $_POST['lr_super'];
    $requestType = $_POST['lr_type'];
    $date = date("Y-m-d");
    echo $requestType.$superVisor.$leaverequestID.$leaverequestEmployeeID;
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
    $approveRequest = mysqli_query($connection, "UPDATE leaverequest set `emp_supervisor_response` = 'Approved', `date_approval` = '$date' where `leaverequestID` = '$leaverequestID'");
    if($requestType == "Vacation Leave"){
        $updateCredit = mysqli_query($connection,"UPDATE tbl_emp_info SET `vl_bal` = (vl_bal-1) WHERE emp_id = $leaverequestEmployeeID");
    }
    else if($requestType == "Sick Leave"){
        $updateCredit = mysqli_query($connection,"UPDATE tbl_emp_info SET `sl_bal` = (sl_bal-1) WHERE emp_id = $leaverequestEmployeeID");
    }
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
                $msg = "Good day!\n\nYour leave request for the dates ".$startdate." to ".$enddate." has been APPROVED by your supervisor,".$name." .\n\n Thank you for using HuRK, \n Human Resource Kiosk";
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