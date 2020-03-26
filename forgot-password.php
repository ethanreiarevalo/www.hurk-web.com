<?php
    session_start();
    include_once('connection.php');
    $error_msg = "";
    $succ_msg = "";
    if($_SERVER["REQUEST_METHOD"] == "POST"){
        $email = $connection->real_escape_string($_POST['email_send']);

        if(!empty($email)){
            $search_email = "SELECT email_add, emp_id FROM tbl_emp_info WHERE email_add = '$email'";
            $search_result = mysqli_query($connection, $search_email);
            $search_row = mysqli_fetch_array($search_result);
            if($search_row['email_add'] == $email){
                // $error_msg = "success";
                $email_add = $search_row['email_add'];
                $id_no = $search_row['emp_id'];
                $search_accounts = "SELECT * FROM accounts WHERE emp_id = '$id_no'";
                $accounts_result = mysqli_query($connection, $search_accounts);
                $accounts_row = mysqli_fetch_array($accounts_result);
                if($accounts_row['Type'] == "admin"){
                    $pw = "SELECT empl_password FROM accounts WHERE emp_id = '$id_no'";
                    $pw_result = mysqli_query($connection, $pw);
                    $pw_row = mysqli_fetch_array($pw_result);

                    $to = $email_add;
                    $subject = "HURK Web Password";
                    $msg = "Your HURK Web password is: ".$pw_row['empl_password'];
                    $headers = "From: HuRKKiosk@gmail.com";
                    
                    mail($to,$subject,$msg,$headers);
                    $succ_msg = "Your password has been sent to your email!";
                }
                else{
                    $error_msg = "You are not an admin.";
                }

            }
            else{
                $error_msg = "Email is not registered";
            }
        }
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Forgot password</title>
    <script src="https://kit.fontawesome.com/30e125d372.js" crossorigin="anonymous"></script>
    <?php include('css/bootstrap.php');?>
    <style>
        html,body,.wrapper{
            padding:1%;
            background: #f0f0f0;
        }
    </style>
</head>
<body>
    <section id="wrapper" class="d-block w-100">
        <div class="container col-xl-4 text-center m-auto mt-5">
            <img src="images/logohurk.png" alt="">
            <h4 class="lead">Forgot Password?</h4>
            <hr>
            <p>Please enter your email address registered so we could send your password to your email.</p>
            <p class="my-1 text-danger"><?php echo $error_msg;?></p>
            <p class="my-1 text-success"><?php echo $succ_msg;?></p>
            <form action="<?php htmlspecialchars("PHP_SELF");?>" enctype="multipart/form-data" method="post">
                <input type="email" name="email_send" id="" class="form-control" placeholder="Email address">
                <button class="btn btn-success mt-2 w-100">Submit</button>
            </form>
            <hr>
        </div>
    </section>
</body>
</html>