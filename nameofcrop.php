<!Doctype>
<html>
<head>
<link href="nameofcrop.css" type="text/css" rel="stylesheet">
<title>
</title>
</head>
<body>
<div>
<form>
<h1 class="h">Enter the Name Of Crop</h1>
<label class="l"><b>Name </b>
<input type="text" name="bt">
</input>
</label>
</form>
<button class="b" id="b">Submit</button>
<div>
<?php
//if(isset($_POST['b']))
//{
	$a=isset($_POST['bt'])?$_POST['bt']:' ';
	$conn=mysqli_connect("localhost","root","","agriculture1");
	$query="select * from crops where Name=\"$a\"";
	$result=mysqli_query($conn,$query);
	while($row=mysqli_fetch_assoc($result)):
?>
    <tr class ="c1">
	<td><?php echo $row['Name'];?></td>
	<td><?php echo $row['Type'];?></td>
	<td><?php echo $row['Category'];?></td>
	<td><?php echo $row['Temperature'];?></td>
	<td><?php echo $row['Annual Rainfall'];?></td>
	<td><?php echo $row['Soil Type'];?></td>
	<td><?php echo $row['Highest Producing State'];?></td>
   </tr>
<?php endwhile; ?>
</body>
</html>