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
    <title>HURK | Reset</title>
    <?php include('css/bootstrap.php');?>
   
    <script src="https://kit.fontawesome.com/30e125d372.js" crossorigin="anonymous"></script>
    <script src="../js/jquery-3.4.1.js"></script>
    <style>
        .confirm_open{
            height:100vh;
            width:100%;
            position:absolute;
            top:0;
            left:0;
            background: #0009; 
            display:flex;
            justify-content:center;
            align-items:center;
        }
        .confirm_close{
            display:none;
        }
        
    </style>
</head>
<body>
     <header>
        <?php include('nav.php');?>
    </header>
    <section id="wrapper">
        <div class="row">
            <div class="side-bar col-xl-3 col-lg-4 mb-5">
                <div class="sb py-3 mt-5">
                    <h5 class="ml-4">Menu</h5>
                    <a name="link" href="admins.php">
                        <div class="side-link text-dark p-3 mt-2">
                            <i class="fas fa-user-tie ml-4"></i>
                            Admins
                        </div>
                    </a>
                    <a name="link" href="admin_hr.php">
                        <div class="side-link text-dark p-3 mt-2">
                            <i class="fas fa-user-tie ml-4"></i>
                            HRDO Admin
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
                    <a name="link" href="reset.php">
                        <div class="side-link-active text-success p-3 mt-2">
                            <i class="fas fa-sync-alt ml-4"></i>
                            Reset ML & SPL
                        </div>
                    </a>
                </div>
            </div>

            <div class="content col-xl-9 col-lg-8">
                <div class="container">
                    <div class="d-container mb-0 jumbotron bg-transparent">
                        <h5>Reset</h5>
                        <!-- <p class="lead">Request history can be seen here</p> -->
                        <hr class="my-4">
                        
                        <p class="text-danger">
                            <i class="fas fa-exclamation-triangle"></i>
                            Warning: By clicking the reset button below all Mandatory leave (ML) and
                            Special priviledge leave (SPL) credits will be reset.
                        </p class="my-4">
                        <hr>
                        <div class="d-flex justify-content-center">
                            <button id="open" class="btn btn-danger w-25">Reset</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="confirm" class="confirm_close">
            <div id="conf_cont" class="text-center bg-white p-4">
                Are you sure you want to reset?
                <div class="d-flex justify-content-center">
                    <form action="reset_all.php" class="m-3">
                        <button class="btn btn-success">Yes</button>
                    </form>
                    <button id="close" class="btn btn-danger m-3">No</button>
                </div>
            </div>
        </div>
    </section>
    
        <script>
            $(document).ready(function(){
                $("#open").click(function(){
                    $("#confirm").removeClass("confirm_close");
                    $("#confirm").addClass("confirm_open");
                });
            });
            $(document).ready(function(){
                $("#close").click(function(){
                    $("#confirm").removeClass("confirm_open");
                    $("#confirm").addClass("confirm_close");
                });
            });
        </script>
        <?php include('js/script.php')?>
</body>
</html>