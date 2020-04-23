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
    <title>HURK | Dashboard</title>
    <?php include('css/bootstrap.php');?>
    <script src="https://kit.fontawesome.com/30e125d372.js" crossorigin="anonymous"></script>
    <script src="../js/jquery-3.4.1.js"></script>


</head>
<body>
    <header>
        <?php include('nav.php');?>
    </header>
    <section id="wrapper">
        <div class="row">
            <div class="side-bar col-xl-3 col-lg-4">
                <div class="sb py-3 mt-5">
                    <h5 class="ml-4">Menu</h5>
                    <a name="link" href="dashboard.php">
                        <div class="side-link text-dark p-3 mt-2">
                            <i class="fas fa-chart-line ml-4"></i>
                            Dashboard
                        </div>
                    </a>
                    <a name="link" href="request.php">
                        <div class="side-link text-dark p-3 mt-2">
                            <i class="fas fa-scroll ml-4"></i>
                            Requests
                        </div>
                    </a>
                    <a name="link" href="reports.php">
                        <div class="side-link-active text-success p-3 mt-2">
                            <i class="fas fa-table ml-4"></i>
                            Reports
                        </div>
                    </a>
                </div>
            </div>
            <div class="content col-xl-9 col-lg-8">
                <div class="container">
                    <div class="d-container mb-0 jumbotron bg-transparent">
                        <h5>Reports</h5>
                        <!-- <p class="lead">Request history can be seen here</p> -->
                        <hr class="my-4">

                        <div class="row justify-content-center">
                            <div class="row input-group border-bottom w-75 justify-content-center align-items-center">
                                <i class="fa fa-search"></i>
                                <input type="text" name="search" id="search_text" class="p-2 form-control mx-1 border-0" placeholder="Search by Name, Employee ID, College or Type...">
                            </div>
                        </div>
                    </div>
                    <div class="text-center table-container table table-responsive d-block">
                    <?php
                    $reports_table_sql = "Select leaverequestEmployeeName, date_approval, leaverequestType, emp_supervisor_response, leaverequestStartDate, leaverequestEndDate from leaverequest where emp_supervisor = '$ID_No' && emp_supervisor_response <> 'Pending'";
                    $reports_table_result = mysqli_query($connection,$reports_table_sql);
                    if($reports_table_result -> num_rows > 0){?>
                        <table class="table table-bordered table-striped table-hover w-75 m-auto" id="table-data">
                            <tr>
                                <th>Name</th>
                                <th>Request Type</th>
                                <th>Start Date</th>
                                <th>End Date</th>
                                <th>Date Responded</th>
                                <th>Status</th>
                            </tr>

                            <?php while($row = $reports_table_result -> fetch_assoc()){?>
                                <tr>
                                    <td><?=$row["leaverequestEmployeeName"]?></td>
                                    <td><?=$row["leaverequestType"]?></td>
                                    <td><?=$row["leaverequestStartDate"]?></td>
                                    <td><?=$row["leaverequestEndDate"]?></td>
                                    <td><?=$row["date_approval"]?></td>
                                    <td><?=$row["emp_supervisor_response"]?></td>
                                </tr>
                            <?php }}?>
                        </table>
                        <input type="hidden" id="passid" name="pass-id" value = "<?php echo $ID_No;?>">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script type="text/javascript">
        $(document).ready(function(){
            //get id of search input .keyup gets the value of input while typing
            $("#search_text").keyup(function(){
                var search = $(this).val();
                var passid = $("#passid").val();
                //use ajax to get auto response from the server using url to get the the query from the php file method for the method to use
                //
                $.ajax({
                    //url or file where the action or query takes place
                    url:'action.php',
                    //type of methods use post or get, post recomended for more secure passing of data, get for more faster but less secure
                    method:'post',
                    // passes the data input from search variable to query to use $_post['query'] in action page
                    data:{query:search,id:passid},
                    //where to show the results when request is a success and now available to put in an element
                    success:function(response){
                        $("#table-data").html(response);
                    }

                });
            });
        });
    </script>
    <?php include('js/script.php')?>
</body>
</html>