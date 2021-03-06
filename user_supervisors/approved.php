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
    $days = 0;
    //prev credit var
    $prev_slc = 0;
    $prev_vlc = 0;
    $prev_mlc = 0;
    $prev_splc = 0;
    //after credit var
    $after_slc = 0;
    $after_vlc = 0;
    $after_mlc = 0;
    $after_splc = 0;
    //leave type var
    $lc_type = "";
    //get previous leave credits
    $lc_details = "SELECT * FROM tbl_emp_info WHERE emp_id = '$leaverequestEmployeeID'";
    $lc_d_result = mysqli_query($connection, $lc_details);
    $lc_d_row = mysqli_fetch_array($lc_d_result);
    if($lc_d_row['emp_id'] == $leaverequestEmployeeID){
        $prev_vlc = $lc_d_row['vl_bal']; 
        $prev_slc = $lc_d_row['sl_bal'];
        $prev_mlc = $lc_d_row['ml_bal'];
        $prev_splc = $lc_d_row['spl_bal'];
    }
    // getting leave request details
    $leaveDetails = "SELECT * FROM leaverequest WHERE leaverequestID = '$leaverequestID'";
    $details_result = mysqli_query($connection, $leaveDetails);
    $row_details = mysqli_fetch_array($details_result);
    if($row_details['leaverequestID'] == $leaverequestID){
        $startdate = $row_details['leaverequestStartDate'];
        $enddate = $row_details['leaverequestEndDate'];
        $days = $row_details['leaverequestNoOfDays'];
        $lc_type = $row_details['leaverequestType'];
    }
    //checking and denying if days > credits
    if($requestType == "Vacation Leave" && $days > $prev_vlc || $requestType == "Sick Leave" && $days > $prev_slc){
        //denying request
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
                    $msg = "Good day!\n\nSorry to say that your leave request for the dates ".$startdate." to ".$enddate." has been DISAPPROVED by your system, due to the reason of inssufficient leave credits .\n\n Thank you for using HuRK, \n Human Resource Kiosk";
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
        
        header("Location: _deny.php");
    }
    else{
        // approving request, condition if vl or sl
        $approveRequest = mysqli_query($connection, "UPDATE leaverequest set `emp_supervisor_response` = 'Approved', `date_approval` = '$date' where `leaverequestID` = '$leaverequestID'");
        //Vacation Leave
        if($requestType == "Vacation Leave"){
            //update credit
            if($updateCredit = mysqli_query($connection,"UPDATE tbl_emp_info SET `vl_bal` = (vl_bal-'$days') WHERE emp_id = $leaverequestEmployeeID")){
                //get updated leave credits
                $after_details = "SELECT * FROM tbl_emp_info WHERE emp_id = '$leaverequestEmployeeID'";
                $after_result = mysqli_query($connection, $after_details);
                $after_row = mysqli_fetch_array($after_result);
                if($after_row['emp_id'] == $leaverequestEmployeeID){
                    $after_vlc = $after_row['vl_bal']; 
                    $after_slc = $after_row['sl_bal'];
                    $after_mlc = $after_row['ml_bal']; 
                    $after_splc = $after_row['spl_bal'];
                }
                //insert the prev credit and after credit to logs
                $insert_log = "INSERT INTO lc_bal_log VALUES(null, '$leaverequestEmployeeID', '$lc_type', '$prev_vlc', '$after_vlc', '$date')";
                mysqli_query($connection, $insert_log);
            }
        }
        //Sick Leave
        else if($requestType == "Sick Leave"){
            //update credit
            $updateCredit = mysqli_query($connection,"UPDATE tbl_emp_info SET `sl_bal` = (sl_bal-'$days') WHERE emp_id = $leaverequestEmployeeID");
            //get updated leave credits
            $after_details = "SELECT * FROM tbl_emp_info WHERE emp_id = '$leaverequestEmployeeID'";
            $after_result = mysqli_query($connection, $after_details);
            $after_row = mysqli_fetch_array($after_result);
            if($after_row['emp_id'] == $leaverequestEmployeeID){
                $after_vlc = $after_row['vl_bal']; 
                $after_slc = $after_row['sl_bal'];
                $after_mlc = $after_row['ml_bal']; 
                $after_splc = $after_row['spl_bal'];
            }
            //insert the prev credit and after credit to logs
            $insert_log = "INSERT INTO lc_bal_log VALUES(null, '$leaverequestEmployeeID', '$lc_type', '$prev_slc', '$after_slc', '$date')";
            mysqli_query($connection, $insert_log);
        }
        //Mandatory Leave
        else if($requestType == "Mandatory Leave"){
            //update credit
            $updateCredit = mysqli_query($connection,"UPDATE tbl_emp_info SET `ml_bal` = (ml_bal-'$days') WHERE emp_id = $leaverequestEmployeeID");
            //get updated leave credits
            $after_details = "SELECT * FROM tbl_emp_info WHERE emp_id = '$leaverequestEmployeeID'";
            $after_result = mysqli_query($connection, $after_details);
            $after_row = mysqli_fetch_array($after_result);
            if($after_row['emp_id'] == $leaverequestEmployeeID){
                $after_vlc = $after_row['vl_bal']; 
                $after_slc = $after_row['sl_bal'];
                $after_mlc = $after_row['ml_bal']; 
                $after_splc = $after_row['spl_bal'];
            }
            //insert the prev credit and after credit to logs
            $insert_log = "INSERT INTO lc_bal_log VALUES(null, '$leaverequestEmployeeID', '$lc_type', '$prev_mlc', '$after_mlc', '$date')";
            mysqli_query($connection, $insert_log);
        }
        //Special Priviledge Leave credits
        else if($requestType == "Special Privilege Leave"){
            //update credit
            $updateCredit = mysqli_query($connection,"UPDATE tbl_emp_info SET `spl_bal` = (spl_bal-'$days') WHERE emp_id = $leaverequestEmployeeID");
            //get updated leave credits
            $after_details = "SELECT * FROM tbl_emp_info WHERE emp_id = '$leaverequestEmployeeID'";
            $after_result = mysqli_query($connection, $after_details);
            $after_row = mysqli_fetch_array($after_result);
            if($after_row['emp_id'] == $leaverequestEmployeeID){
                $after_vlc = $after_row['vl_bal']; 
                $after_slc = $after_row['sl_bal'];
                $after_mlc = $after_row['ml_bal']; 
                $after_splc = $after_row['spl_bal'];
            }
            //insert the prev credit and after credit to logs
            $insert_log = "INSERT INTO lc_bal_log VALUES(null, '$leaverequestEmployeeID', '$lc_type', '$prev_mlc', '$after_mlc', '$date')";
            mysqli_query($connection, $insert_log);
        }
        // getting the super visor details then email to requester.
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
    }
    
?>