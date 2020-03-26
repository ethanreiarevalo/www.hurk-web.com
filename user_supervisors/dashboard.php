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
        $accountquery = "Select * from tbl_emp_info where emp_id = '$ID_No'";
        $result = mysqli_query($connection,$accountquery);
        $row = mysqli_fetch_array($result);
        if($row['emp_id'] == $ID_No){
            $firstName = $row['first_name'];
            $lastName = $row['last_name'];
            $middleName = $row['middle_name'];
            $Name = $firstName." ".$middleName.". ".$lastName;
        }
        
    }


    $approvedQuery = "Select * from leaverequest where emp_supervisor_response = 'Approved' && emp_supervisor = '$ID_No'";
    if($approved_result = mysqli_query($connection,$approvedQuery)){
        $approved_count = mysqli_num_rows($approved_result);
    }

    $dapprovedQuery = "Select * from leaverequest where emp_supervisor_response = 'Disapproved' && emp_supervisor = '$ID_No'";
    if($dapproved_result = mysqli_query($connection,$dapprovedQuery)){
        $dapproved_count = mysqli_num_rows($dapproved_result);
    }

    $pendingQuery = "Select * from leaverequest where emp_supervisor_response = 'Pending' && emp_supervisor = '$ID_No'";
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
    <script src="js/hover.js"></script>
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
                        <div class="side-link-active text-success p-3 mt-2">
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
                        <div class="side-link text-dark p-3 mt-2">
                            <i class="fas fa-table ml-4"></i>
                            Reports
                        </div>
                    </a>
                </div>
            </div>
            <div class="content col-xl-9 col-lg-8 overflow-hidden">
                <div class="container mt-5">
                    <div class="row m-auto mb-3 justify-content-center">
                        <!-- <div class="col-xl-5 image">
                            <div class="overlay">
                                <div class="btn-container">
                                    <button class="btn btn-success">Update Image</button>
                                </div>
                            </div>
                            <img src="../images/default.png" alt="" class="w-100">
                        </div> -->
                        <div class="col-xl-7 py-4 px-5 profile">
                            <h5>Personal Details</h5>
                            <p>Name:&nbsp;<?php echo $Name;?> </p>
                            <p>Position:&nbsp;</p>
                            <p>College:&nbsp; </p>
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