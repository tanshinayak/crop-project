<html>
    <head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css"/>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/styletable.css"/>
    
    <script>
        $(document).ready( function () {
        $('.table').DataTable();
        } );
    </script>
    </head>
    <body>
    <h3 id="headhead">Crops</h3>
    <table  class="table">

<thead class="tablehead">

<tr>
    <th>Name</th>
    <th>Type</th>
    <th>Category</th>
    <th>Temperature</th>
    <th>Annual Rainfall</th>
    <th>Soil Type</th>
    <th>Highest Producing State</th>
</tr>

</thead>

<tbody>

<?php

$conn = mysqli_connect("localhost","root","","agriculture");

$query = "select * from crops";
$result = mysqli_query($conn,$query);

while( $row = mysqli_fetch_assoc($result)):   

?>

    <tr class="cl" >
        <td><?php echo $row['Name'];?></td>
        <td><?php echo $row['Type'];?></td>
        <td><?php echo $row['Category'];?></td>
        <td><?php echo $row['Temperature (in C)'];?></td>
        <td><?php echo $row['Annual Rainfall (in cm)'];?></td>
        <td><?php echo $row['Soil Type'];?></td>
        <td><?php echo $row['Highest Producing State'];?></td>

    </tr>

<?php endwhile; ?>

</tbody>
</table>
    </body>
</html>