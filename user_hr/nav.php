<?php
    // session_start();
    $ID_No = $_SESSION['ID_No'];
?>
<style>
    nav{
        background-color: #001B07;
        color: white;
    }
    .nav-item{
        background-color: #71a510;
    }
    .nav-link{
        text-decoration: none !important;
    }
    img{
        width:10%;
    }
    @media only screen and (max-width:991px){
        .nav-item{
        background-color: transparent !important;
        }
    }
</style>
<nav class="navbar navbar-expand-lg navbar-dark">
    <a class="navbar-brand"><img src="../images/logohurk.png" alt=""> Welcome <?php echo $firstName;?></a>
    <button class="navbar-toggler" data-target="#my-nav" data-toggle="collapse" aria-controls="my-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div id="my-nav" class="collapse navbar-collapse">
        <ul class="navbar-nav w-100 justify-content-end">
            <li class="nav-item">
                <a class="nav-link text-white text-center" href="logout.php" tabindex="-1" aria-disabled="true">
                    <i class="fas fa-sign-out-alt"></i>
                    Logout
                </a>
            </li>
        </ul>
    </div>
</nav>