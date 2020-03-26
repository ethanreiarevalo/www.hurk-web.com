<?php
    include ('../connection.php');

    $output="";

    if(isset($_POST['query'])){
        $search = $_POST['query'];
        // $id = $_POST['id'];
        if(!empty($_POST['query'])){
            $request_table_sql = "Select leaverequest.leaverequestEmployeeName, leaverequest.emp_supervisor_response, leaverequest.leaverequestType, leaverequest.emp_supervisor_remarks, tbl_emp_info.emp_id, CONCAT(tbl_emp_info.first_name,' ', tbl_emp_info.last_name) as emp_name from leaverequest INNER JOIN tbl_emp_info ON leaverequest.emp_supervisor = tbl_emp_info.emp_id where leaverequest.emp_supervisor_response <> 'Pending' && leaverequestEmployeeName like '%$search%' || leaverequestType like '%$search%' || CONCAT(tbl_emp_info.first_name,' ', tbl_emp_info.last_name) like '%$search%'";
        }
        else{
            $request_table_sql = "Select leaverequest.leaverequestEmployeeName, leaverequest.emp_supervisor_response, leaverequest.leaverequestType, leaverequest.emp_supervisor_remarks, tbl_emp_info.emp_id, CONCAT(tbl_emp_info.first_name,' ', tbl_emp_info.last_name) as emp_name from leaverequest INNER JOIN tbl_emp_info ON leaverequest.emp_supervisor = tbl_emp_info.emp_id where leaverequest.emp_supervisor_response <> 'Pending'"; 
        }
    }
    
    $request_table_result = mysqli_query($connection,$request_table_sql);
    // $result = $request_table_result->get_result();
    if($request_table_result -> num_rows > 0){
        $output = "<thead>
                          <tr>
                               <th>
                                   Name
                               </th>
                               <th>
                                   Request Type
                               </th>
                               <th>
                                   Responded By
                               </th>
                               <th>
                                   Remarks
                               </th>

                          </tr>
                       </thead>
                       <tbody>";
                       while($row = $request_table_result -> fetch_assoc()){
                           if($row['emp_supervisor_response'] != "Pending"){
                            $output .="
                                      <tr>
                                           <td>". $row['leaverequestEmployeeName'] ."</td>
                                           <td>". $row['leaverequestType'] ."</td>
                                           <td>". $row['emp_name'] ."</td>
                                           <td>". $row['emp_supervisor_remarks'] ."</td>
                                      </tr>
                                      ";
                           }
                           else{
                            
                           }
                           
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
                                   Responded By
                               </th>
                               <th>
                                    Remarks
                                </th>
                          </tr>
                       </thead>
                       <tbody></tbody>";
        echo $output;
    }
?>