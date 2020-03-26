<?php
    session_start();
    include_once('../connection.php');
    if(empty($_SESSION['ID_No'])){
        header("Location: ../index.php");
    }
    else{
        $ID_No = $_SESSION['ID_No'];
        $PW = $_SESSION['PW'];
        $accountType = $_SESSION['Type'];
        $account_college = $_SESSION['college'];
        $accountquery = "Select * from tbl_emp_info where emp_id = '$ID_No'";
        $result = mysqli_query($connection,$accountquery);
        $row = mysqli_fetch_array($result);
        if($row['emp_id'] == $ID_No){
            $firstName = $row['first_name'];
            $lastName = $row['last_name'];
            $middleName = $row['middle_name'];
        }
        
    }


    $approvedQuery = "Select * from leaverequest where hr_status = 'Approved' && respondedby_hr = '$ID_No'";
    if($approved_result = mysqli_query($connection,$approvedQuery)){
        $approved_count = mysqli_num_rows($approved_result);
    }

    $dapprovedQuery = "Select * from leaverequest where hr_status = 'Disapproved' && respondedby_hr = '$ID_No'";
    if($dapproved_result = mysqli_query($connection,$dapprovedQuery)){
        $dapproved_count = mysqli_num_rows($dapproved_result);
    }

    $pendingQuery = "Select * from leaverequest where hr_status = 'Pending' && respondedby_hr = '$ID_No'";
    if($pending_result = mysqli_query($connection,$pendingQuery)){
        $pending_count = mysqli_num_rows($pending_result);
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
                <a href="dashboard.php">
                    <div class="side-link-active text-white p-3 mt-5">
                    <i class="fas fa-columns ml-4"></i>
                    Dashboard
                    </div>
                </a>
                <!-- <a href="request.php">
                    <div class="side-link text-center text-white p-3 mt-2">Requests</div>
                </a> -->
                <a href="admins.php">
                    <div class="side-link text-white p-3 mt-2">
                    <i class="fas fa-user-tie ml-4"></i>
                    Admins
                    </div>
                </a>
                <!-- <a href="reports.php">
                    <div class="side-link text-center text-white p-3 mt-2">Reports</div>
                </a> -->
            </div>
            <div class="content col-xl-9 col-lg-8 overflow-hidden">
                <div class="container container-scroll">
                    <div class="d-container jumbotron bg-transparent">
                        <h5>Dashboard</h5>
                        <hr class="my-4">
                        <div class="row justify-content-between">
                            <div class="container col-xl-5">
                                <div class="name row">
                                    <h6 class="mx-1">Name: </h6>
                                    <p class="mx-1"><?php echo $firstName." ".$middleName." ".$lastName;?></p>
                                </div>
                                <div class="name row">
                                    <h6 class="mx-1">Position: </h6>
                                    <p class="mx-1"><?php echo $accountType;?></p>
                                </div>
                            </div>
                            <div class="container col-xl-5">
                                <div class="name row">
                                    <h6 class="mx-1">College: </h6>
                                    <p class="mx-1"><?php echo $account_college;?></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="card-container row justify-content-center">
                            <div class="num-content m-3">
                                <h5 class= "text-center">Approved</h5>
                                <h1 class="card-text text-center "><?php echo $approved_count;?></h1>
                            </div>
                            <div class="num-content m-3">
                                <h5 class= "text-center">Disapproved</h5>
                                <h1 class="card-text text-center "><?php echo $dapproved_count;?></h1>
                            </div>
                            <div class="num-content m-3">
                                <h5 class= "text-center">Pending</h5>
                                <h1 class="card-text text-center "><?php echo $pending_count;?></h1>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <?php include('js/script.php');?>
</body>
</html>