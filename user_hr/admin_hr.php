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
                        <div class="side-link-active text-success p-3 mt-2">
                            <i class="fas fa-user-tie ml-4"></i>
                            HRDO Admin
                        </div>
                    </a>
                    <a name="link" href="reports.php">
                        <div class="side-link text-dark p-3 mt-2">
                            <i class="fas fa-table ml-4"></i>
                            Reports
                        </div>
                    </a>
                    <a name="link" href="reset.php">
                        <div class="side-link text-dark p-3 mt-2">
                            <i class="fas fa-sync-alt ml-4"></i>
                            Reset ML & SPL
                        </div>
                    </a>
                </div>
            </div>
            
            <div class="content col-xl-9 col-lg-8 overflow-hidden">
                <div class="container">
                    <div class="d-container mb-0 jumbotron bg-transparent">
                        <h5>Accounts</h5>
                        <hr class="my-4">
                        <p class="text-danger">Note: You are the admin of this page, changing it would automatically log you out of the site.</p>
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
                    $reports_table_sql = "SELECT tbl_emp_info.emp_id, CONCAT(tbl_emp_info.first_name,' ', tbl_emp_info.last_name) AS emp_name, accounts.Type, accounts.College, accounts.hr_type, accounts.department FROM tbl_emp_info INNER JOIN accounts ON tbl_emp_info.emp_id = accounts.emp_id WHERE accounts.department = 'HRDO' && accounts.hr_type = 'non-admin'";
                    $reports_table_result = mysqli_query($connection,$reports_table_sql);
                    if($reports_table_result -> num_rows > 0){?>
                        <table class="table table-bordered table-striped table-hover w-75 m-auto" id="table-data">
                            <tr>
                                <th>Employee ID</th>
                                <th>Name</th>
                                <th>Type</th>
                            </tr>

                            <?php 
                                while($row = $reports_table_result -> fetch_assoc()){
                                    $empid = $row['emp_id'];
                                    $Name = $row['emp_name'];
                                    $college = $row['College'];
                                    $type = $row['hr_type'];
                                    
                            ?>
                                <tr>
                                    <td>
                                        <?php echo $empid;?>
                                    </td>
                                    <td>
                                        <?php echo $Name;?>
                                    </td>
                                    <td class="text-success">
                                        <?php
                                            if($accountType == "admin"){
                                                if($type == "admin" ){
                                                    echo"<label>Admin</label>";
                                                }
                                                else if($type == "sub-admin"){
                                                    echo "<label>Sub-Admin</label>";
                                                }
                                                else if($type == "non-admin"){
                                                    echo"<button onclick='modalOpen()' class = 'btn btn-danger text-white'>Non-Admin</button>";
                                                }
                                            }
                                            // else if($accountType == "sub-admin"){
                                            //     if($type == "admin"){
                                            //         echo "<label>Admin</label>";
                                            //     }
                                            //     else if ($type == "non-admin" && $college != "HRDO"){
                                            //         echo"<button onclick='modalOpen()' class = 'btn btn-danger text-white'>Non-Admin</button>";
                                            //     }
                                            //     else if ($type == "sub-admin" && $college == "HRDO"){
                                            //         echo "<label>Sub-Admin</label>";
                                            //     }
                                            //     else if($type == "non-admin" && $college == "HRDO"){
                                            //         echo "<label class='text-danger'>Non-Admin</label>";
                                            //     }
                                            // }
                                            else if($accountType == "non-admin"){
                                                if($type == "admin"){
                                                    echo "<label>Admin</label>";
                                                }
                                                else if($type == "sub-admin"){
                                                    echo "<label>Sub-Admin</label>";
                                                }
                                                else if($type == "non-admin" && $college != "HRDO"){
                                                    echo"<button onclick='modalOpen()' class = 'btn btn-danger text-white'>Non-Admin</button>";
                                                }
                                                else if($type == "non-admin" && $college == "HRDO"){
                                                    echo "<label class = 'text-danger'>Non-Admin</label>";
                                                }
                                            }
                                            // if($type == "admin"){
                                            //     echo"Admin";
                                            // }
                                            // else if($type == "non-admin"){
                                            //     echo"<button onclick='modalOpen()' class = 'btn btn-danger text-white'>Non-Admin</button>";
                                            // }
                                        ?>
                                    </td>
                                </tr>
                            <?php }}?>
                        </table>
                        <input type="hidden" id="passid" name="pass-id" value = "<?php echo $ID_No;?>">
                    </div>
                    <?php

                    ?>
                    <!--ConFirmation MODAL-->
                    <!-- <div id="modalwrapper" style = "height: 100vh; width:100%; background-color:#0009;"> -->
                    <div id="modal-remarks" class="popup position position-fixed text-center p-5">
                        <form action="adminhr_change.php" method="post">
                            <input type="hidden" name="emp_id" id="emp_id">
                            <p class="lead text-center">Notice</p>
                            <p id="notice-text" class="text-center"></p>
                            <p class="text-center">Are you sure you want to change?</p>
                            <p>New Admin password:</p>
                            <input type="text" class="form-control" name="newpass" placeholder="New admin password">
                            <div class="row justify-content-between">
                                <button type="submit" class="btn btn-success mt-3">Confirm</button>
                                <button type="button" class="btn btn-danger mt-3" onclick="modalClose()">Cancel</button>
                            </div>
                        </form>
                    </div>
                    <!-- </div> -->
                    <!---->
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
                    url:'actionadmin.php',
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
        var table = document.getElementById("table-data");
        // var College = "";
        // var Name = "";
        // var Id = "";
        // var type = "";
        // var a_College = "";
        // var a_Name = "";
        // var a_Id = "";
        // var a_Type = "";
        function modalOpen(){
            var modal = document.getElementById("modal-remarks");
            modal.className = "pop";
        }
        function modalClose(){
            var modal = document.getElementById("modal-remarks");
            modal.className = "popup";
            $("#notice-text").text("");
        }  
        for(var i = 1; i < table.rows.length; i++)
        {
            table.rows[i].onclick = function()
            {
                document.getElementById("emp_id").value = $.trim(this.cells[0].innerHTML);
            };
        }
        
        // for(var i = 1; i < table.rows.length; i++)
        // {
        //     table.rows[i].onclick = function()
        //     {
        //          //rIndex = this.rowIndex;
        //         // alert(this.cells[2].innerHTML);
        //         // document.getElementById("inputCollege").value = $.trim(this.cells[2].innerHTML);
        //         College = this.cells[2].innerHTML;
        //         Name = this.cells[1].innerHTML;
        //         Id = this.cells[0].innerHTML;
        //         type = this.cells[3].innerHTML;
        //         $("#Id").val($.trim(Id));
        //         $("#College").val($.trim(College));
        //         $("#Type").val($.trim(type));
        //         for(var a = 1; a < table.rows.length; a++)
        //         {
        //         //  alert( table.rows[a].cells[2].innerHTML + " " +table.rows[a].cells[3].innerHTML);
        //             a_Id = table.rows[a].cells[0].innerHTML;
        //             a_College = table.rows[a].cells[2].innerHTML;
        //             a_Type = table.rows[a].cells[3].innerHTML;
        //             var a_Name = table.rows[a].cells[1].innerHTML;
        //             //alert(College == a_College);
        //             if(College == a_College && a_Type != type){
        //                 $("#a_Id").val($.trim(a_Id));
        //                 $("#a_College").val($.trim(a_College));
        //                 $("#notice-text").text("The current admin of " + College + " is " + a_Name + ".");
        //                 break;
        //             }
        //             else if(College == a_College && a_Type == type){
        //                 $("#notice-text").text("There is no current admin for this College.");
        //             }  
        //         }

        //     }
        // }
        
        
    </script>
    <?php include('js/script.php')?>
</body>
</html>