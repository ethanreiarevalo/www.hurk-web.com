<?php
    session_start();
    include_once('connection.php');
    $loginerror = "";
    if($_SERVER["REQUEST_METHOD"] == "POST"){
        $ID_No = $connection->real_escape_string($_POST['ID_No']);
        $Emp_Pass = $connection->real_escape_string($_POST['Emp_Pass']);
//test
        $loginquery = "Select emp_id, Type, College, empl_password from accounts where emp_id = '$ID_No' && empl_password = '$Emp_Pass'";
        $result = mysqli_query($connection,$loginquery);
        $row = mysqli_fetch_array($result);
        //For all non-hr but admin
        if($row['emp_id']==$ID_No && $row['empl_password'] == $Emp_Pass && $row['Type'] == "admin" && $row['College'] != "HRDO"){
            $_SESSION['ID_No'] = $row['emp_id'];
            $_SESSION['PW'] = $row['empl_password'];
            $_SESSION['Type'] = $row['Type'];
            $_SESSION['college'] = $row['College'];
            header("Location: user_supervisors/dashboard.php");
            exit;
        }
        //for hrdo admin
        else if($row['emp_id']==$ID_No && $row['empl_password'] == $Emp_Pass && $row['Type'] == "admin" && $row['College'] == "HRDO"){
            $_SESSION['ID_No'] = $row['emp_id'];
            $_SESSION['PW'] = $row['empl_password'];
            $_SESSION['Type'] = $row['Type'];
            $_SESSION['college'] = $row['College'];
            header("Location: user_hr/admins.php");
            exit;
        }
        else if($row['emp_id']==$ID_No && $row['empl_password'] == $Emp_Pass && $row['Type'] == "non-admin" && $row['College'] == "HRDO" || $row['College'] != "HRDO"){
            $loginerror = "You are not authorized to enter this site.";
        }
        else{
            $loginerror = "Oops! Incorrect ID No. or Password.";
        }
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>HURK Web</title>
    <script src="https://kit.fontawesome.com/30e125d372.js" crossorigin="anonymous"></script>
    <?php include('css/bootstrap.php');?>
    <style>
        html,body,section,.dark{
            height:100vh !important;
        }
        .dark{
            background: #0009;
            width:100%;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .jumbotron{
            background: #fff3 !important;

        }
        #wrapper{
            background: url("images/30237.jpg");
        }
    </style>
</head>
<body>
    <section id="wrapper" class = "d-block">
        <div class="dark">
            <div class="jumbotron col-xl-3 col-lg-4 col-md-7 col-sm-9 col-xs-10 text-white text-center">
                <img src="images/logohurk.png" alt="">
                <h4 class="lead">HURK - Web</h4>
                <p class="text-center text-warning"><?php echo $loginerror;?></p>
                <form action="<?php htmlspecialchars("PHP_SELF");?>" enctype="multipart/form-data" method="post">
                    <div class="input-group my-2">
                        <div class="input-group-prepend">
                            <span class="input-group-text bg-white" id="my-addon"><i class="fas fa-id-card"></i></span>
                        </div>
                        <input class="form-control text-center" type="text"  name = "ID_No" placeholder="ID No." aria-describedby="my-addon">
                    </div>
                    <div class="input-group my-2">
                        <div class="input-group-prepend">
                            <span class="input-group-text bg-white" id="my-addon"><i class="fas fa-key"></i></span>
                        </div>
                        <input type="password" class="form-control  text-center" placeholder="Password" name = "Emp_Pass">
                    </div>
                    
                    <button class="btn btn-success w-100 px-5 mb-2">Login</button>
                </form>
                <a href="forgot-password.php" class="text-white">Forgot password?</a>
            </div>
        </div>
    </section>
    
<?php include('js/script.php');?>
</body>
</html>