<?php
    include ('../connection.php');
    session_start();
    $ID_No = $_SESSION['ID_No'];
    $PW = $_SESSION['PW'];
    $accountType = $_SESSION['Type'];
    $output="";

    if(isset($_POST['query'])){
        $search = $connection->real_escape_string($_POST['query']);
        $id = $_POST['id'];
        if(!empty($_POST['query'])){
            $request_table_sql = "SELECT tbl_emp_info.emp_id, CONCAT(tbl_emp_info.first_name,' ', tbl_emp_info.last_name) AS emp_name, accounts.Type, accounts.College FROM tbl_emp_info INNER JOIN accounts ON tbl_emp_info.emp_id = accounts.emp_id WHERE tbl_emp_info.emp_id LIKE '%$search%' OR CONCAT(tbl_emp_info.first_name,' ', tbl_emp_info.last_name) LIKE '%$search%' OR accounts.College LIKE '%$search%' OR accounts.Type LIKE '$search%'";
        }
        else{
            $request_table_sql = "SELECT tbl_emp_info.emp_id, CONCAT(tbl_emp_info.first_name,' ', tbl_emp_info.last_name) AS emp_name, accounts.Type, accounts.College FROM tbl_emp_info INNER JOIN accounts ON tbl_emp_info.emp_id = accounts.emp_id WHERE accounts.College <> 'HRDO'"; 
        }
    }
    
    $request_table_result = mysqli_query($connection,$request_table_sql);
    // $result = $request_table_result->get_result();
    if($request_table_result -> num_rows > 0){
        $output = "<thead>
                          <tr>
                          <th>Employee ID</th>
                          <th>Name</th>
                          <th>College</th>
                          <th>Type</th>
                          </tr>
                       </thead>
                       <tbody>";
                       while($row = $request_table_result -> fetch_assoc()){
                           $type = $row['Type'];
                            $output .="
                                      <tr>
                                           <td>". $row['emp_id'] ."</td>
                                           <td>". $row['emp_name'] ."</td>
                                           <td>". $row['College'] ."</td>
                                      
                                      ";
                            if($accountType == "admin"){
                                if($type == "admin" ){
                                    $output .="<td class ='text-success'><label>Admin</label></td>";
                                }
                                else if($type == "sub-admin"){
                                    $output .="<td class ='text-success'><label>Sub-Admin</label></td>";
                                }
                                else if($type == "non-admin"){
                                    $output .="<td><button onclick='modalOpen()' class = 'btn btn-danger text-white'>Non-Admin</button></td>";
                                }
                            }
                            else if($accountType == "sub-admin"){
                                if($type == "admin"){
                                    $output .="<td class ='text-success'><label>Admin</label></td>";
                                }
                                else if ($type == "non-admin" && $college != "HRDO"){
                                    $output .="<td><button onclick='modalOpen()' class = 'btn btn-danger text-white'>Non-Admin</button></td>";
                                }
                                else if ($type == "sub-admin" && $college == "HRDO"){
                                    $output .="<td class ='text-success'><label>Sub-Admin</label></td>";
                                }
                                else if($type == "non-admin" && $college == "HRDO"){
                                    $output .="<td><label class='text-danger'>Non-Admin</label></td>";
                                }
                            }
                            else if($accountType == "non-admin"){
                                if($type == "admin"){
                                    $output .="<td class ='text-success'><label>Admin</label></td>";
                                }
                                else if($type == "sub-admin"){
                                    $output .="<td class ='text-success'><label>Sub-Admin</label></td>";
                                }
                                else if($type == "non-admin" && $college != "HRDO"){
                                    $output .="<td><button onclick='modalOpen()' class = 'btn btn-danger text-white'>Non-Admin</button></td>";
                                }
                                else if($type == "non-admin" && $college == "HRDO"){
                                    $output .="<td><label class = 'text-danger'>Non-Admin</label></td>";
                                }
                            }
                            // if($row['Type'] == 'admin'){
                            //     $output .="<td><label class = 'text-success'>Admin</label></td></tr>";
                            // }
                            // else if($row['Type'] == 'non-admin'){
                            //     $output .="<td><button onclick='modalOpen()' class = 'btn btn-danger'>Non-Admin</button></td></tr>";
                            // }
                           
                           
                       }
                       $output .="</tbody>";
                       echo $output;
        
    }
    else{
        $output = "<thead>
                          <tr>
                               <th>
                                   Name
                               </th>
                               <th>
                                   Request Type
                               </th>
                               <th>
                                   Status
                               </th>
                          </tr>
                       </thead>
                       <tbody></tbody>";
        echo $output;
    }

    
?>

<!-- <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
</head>
<body> -->
    <!--ConFirmation MODAL-->
    <!-- <div id="modal-remarks" class="popup position position-fixed text-center p-5">
        <form action="" method="post">
            <input type="text" name="" id="inputCollege">
            <p class="lead text-center">Notice</p>
            <p id="notice-text" class="text-center"></p>
            <p class="text-center">Are you sure you want to change?</p>
            <div class="row justify-content-between">
                <button type="submit" class="btn btn-success mt-3">Confirm</button>
                <button type="button" class="btn btn-danger mt-3" onclick="modalClose()">Cancel</button>
            </div>
        </form>
    </div> -->
    <!---->
     
    <script>
        var table = document.getElementById("table-data");
        var College = "";
        var Name = "";
        var Id = "";
        var type = "";
        var a_College = "";
        var a_Name = "";
        var a_Id = "";
        var a_Type = "";
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
                 //rIndex = this.rowIndex;
                // alert(this.cells[2].innerHTML);
                // document.getElementById("inputCollege").value = $.trim(this.cells[2].innerHTML);
                College = this.cells[2].innerHTML;
                Name = this.cells[1].innerHTML;
                Id = this.cells[0].innerHTML;
                type = this.cells[3].innerHTML;
                $("#Id").val($.trim(Id));
                $("#College").val($.trim(College));
                for(var a = 1; a < table.rows.length; a++)
                {
                //  alert( table.rows[a].cells[2].innerHTML + " " +table.rows[a].cells[3].innerHTML);
                    a_Id = table.rows[a].cells[0].innerHTML;
                    a_College = table.rows[a].cells[2].innerHTML;
                    a_Type = table.rows[a].cells[3].innerHTML;
                    var a_Name = table.rows[a].cells[1].innerHTML;
                    //alert(College == a_College);
                    if(College == a_College && a_Type != type){
                        $("#a_Id").val($.trim(a_Id));
                        $("#a_College").val($.trim(a_College));
                        $("#notice-text").text("The current admin of " + College + " is " + a_Name + ".");
                    }
                    else if(College == a_College && a_Type == type){
                        $("#notice-text").text("There is no current admin for this College.");
                    }
                    
                    
                }

            }
        }
    </script>
</body>
</html> 