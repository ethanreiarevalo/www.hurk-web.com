<?php
    session_start();
    include_once('../connection.php');
    if(empty($_SESSION['ID_No'])){
        header("Location: ../index.php");
    }else{
        $ID_No = $_SESSION['ID_No'];
        $PW = $_SESSION['PW'];
        $accountType = $_SESSION['Type'];
        $accountquery = "Select * from tbl_emp_info where emp_id = '$ID_No'";
        $result = mysqli_query($connection,$accountquery);
        $row = mysqli_fetch_array($result);
        if($row['emp_id'] == $ID_No){
            $firstName = $row['first_name'];
            $lastName = $row['last_name'];
            $middleName = $row['middle_name'];
        }
        
    }

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>HURK | Requests</title>
    <?php include('css/bootstrap.php');?>
    <style>
        
    </style>
</head>
<body>
    <header>
        <?php include('nav.php');?>
    </header>
    <section id="wrapper">
        <div class="row">
            <div class="side-bar col-xl-3 col-lg-4">
                <a name="link" href="dashboard.php">
                    <div class="side-link text-center text-white p-3 mt-5">Dashboard</div>
                </a>
                <a name="link" href="request.php">
                    <div class="side-link-active text-center text-white p-3 mt-2">Requests</div>
                </a>
                <a href="admins.php">
                    <div class="side-link text-center text-white p-3 mt-2">Admins</div>
                </a>
                <a name="link" href="reports.php">
                    <div class="side-link text-center text-white p-3 mt-2">Reports</div>
                </a>
            </div>
            <div class="content col-xl-9 col-lg-8 overflow-hidden">
               <div class="container">
                    <div class="jumbotron bg-transparent">
                        <h5>Requests</h5>
                        <!-- <p class="lead">Pending request can be seen here.</p> -->
                        <hr class="my-4">
                        <div class="table table-responsive">
                            <table id="mytable" class="table table-responsive table-borderless text-center">
                                <tr>
                                    <th>
                                        Requester
                                    </th>
                                    <th>
                                        Request Type
                                    </th>
                                    <th>
                                        No. of Days
                                    </th>
                                    <th>
                                        Start Date
                                    </th>
                                    <th>
                                        End Date
                                    </th>
                                    <th>
                                        Response
                                    </th>
                                </tr>
                                <?php
                                    $request_table_sql = "Select leaverequestEmployeeName, leaverequestType, leaverequestNoOfDays, leaverequestStartDate, leaverequestEndDate, leaverequestID, emp_id, emp_supervisor from leaverequest where hr_status = 'Pending'";
                                    $request_table_result = mysqli_query($connection,$request_table_sql);
                                    if($request_table_result -> num_rows > 0){
                                        while($row = $request_table_result -> fetch_assoc()){
                                            echo '<tr><td style="display:none;">' .$row["leaverequestID"] .'</td>'.
                                                 '<td style="display:none;">'. $row["emp_id"] . '</td>'.
                                                 '<td style="display:none;">'. $row["emp_supervisor"] . '</td>'.
                                                 '<td>'. $row["leaverequestEmployeeName"] . '</td>'.
                                                 '<td>'. $row["leaverequestType"] . '</td>'.
                                                 '<td>'. $row["leaverequestNoOfDays"] . '</td>'.
                                                 '<td>'. $row["leaverequestStartDate"] . '</td>'.
                                                 '<td>'. $row["leaverequestEndDate"] . '</td>'.
                                                 '<td>
                                                    <div class="row justify-content-between">
                                                        <form action="approved.php" method="post">
                                                            <input type="hidden" name="lr_ID" id="dStatus" value="'.$row['leaverequestID'].'">
                                                            <input type="hidden" name="lr_EID" id="dStatus" value="'.$row['emp_id'].'">
                                                            <input type="hidden" name="lr_super" id="dStatus" value="'.$row['emp_supervisor'].'">
                                                            <input type="hidden" name="lr_type" id="dtype" value="'.$row['leaverequestType'].'">
                                                            <button name="approved" class="btn btn-primary">Approve</button>
                                                        </form>
                                                        
                                                        <button name="deny" class="btn btn-warning" id="deny_btn" onclick="modalOpen()">Deny</button>
                                                    </div>
                                                 </td> </tr>';

                                        }
                                    }
                                ?>
                            </table>
                        </div>
                        <!--REMARKS MODAL-->
                            <div id="modal-remarks" class="popup position position-fixed text-center p-5">
                                <form action="deny.php" method="post">
                                    <p class="lead text-center">Remarks</p>
                                    <input type="hidden" name="lr_ID" class="form-control" id="l_ID">
                                    <input type="hidden" name="lr_EID" class="form-control"  id="l_EID">
                                    <input type="hidden" name="lr_super" class="form-control"  id="l_super">
                                    <input type="text" name="lr_remarks" class="form-control">
                                    <div class="row justify-content-between">
                                        <button type="submit" class="btn btn-success mt-3">Confirm</button>
                                        <button type="button" class="btn btn-danger mt-3" onclick="modalClose()">Cancel</button>
                                    </div>
                                </form>
                            </div>
                        <!---->
                    </div>
               </div>
            </div>
        </div>
        
    </section>
    <script>
        function modalOpen(){
            var modal = document.getElementById("modal-remarks");
            modal.className = "pop";
        }
        function modalClose(){
            var modal = document.getElementById("modal-remarks");
            modal.className = "popup";
        }  

        var table = document.getElementById("mytable");

        for(var i = 1; i < table.rows.length; i++)
        {
            table.rows[i].onclick = function()
            {
                 //rIndex = this.rowIndex;
                //alert(this.cells[0].innerHTML);
                document.getElementById("l_ID").value = this.cells[0].innerHTML;
                document.getElementById("l_EID").value = this.cells[1].innerHTML;
                document.getElementById("l_super").value = this.cells[2].innerHTML;
            };
        }
    </script>
    <?php include('js/script.php');?>
</body>
</html>