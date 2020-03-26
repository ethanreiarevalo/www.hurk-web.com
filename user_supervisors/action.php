<?php
    include ('../connection.php');

    $output="";

    if(isset($_POST['query'])){
        $search = $_POST['query'];
        $id = $_POST['id'];
        if(!empty($_POST['query'])){
            $request_table_sql = "SELECT * FROM leaverequest WHERE `emp_supervisor` = '$id' && `emp_supervisor_response` <> 'Pending' && leaverequestEmployeeName like '%$search%' || leaverequestType like '%$search%'";
        }
        else{
            $request_table_sql = "SELECT * FROM leaverequest where `emp_supervisor` = '$id' && `emp_supervisor_response` <> 'Pending'"; 
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
                                   Status
                               </th>
                          </tr>
                       </thead>
                       <tbody>";
                       while($row = $request_table_result -> fetch_assoc()){
                           if($row['emp_supervisor_response'] != "Pending" && $row['emp_supervisor'] == $id){
                            $output .="
                                      <tr>
                                           <td>". $row['leaverequestEmployeeName'] ."</td>
                                           <td>". $row['leaverequestType'] ."</td>
                                           <td>". $row['emp_supervisor_response'] ."</td>
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
                                   Status
                               </th>
                          </tr>
                       </thead>
                       <tbody></tbody>";
        echo $output;
    }
?>