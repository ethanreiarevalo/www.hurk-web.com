<?php
    session_start();
    include_once('../connection.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>system Deny</title>
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
            <h4 class="lead">Request Denied</h4>
            <hr>
            <p class="text-center">The request has been DENIED by the system due to insufficient leave credits. An email has been sent to the request sender!</p>
            <hr>
            <a href="request.php" class="btn btn-success">Go back</a>
        </div>
    </section>
</body>
</html>