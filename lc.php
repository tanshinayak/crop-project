
 <html>
 <body>
     <form name="Select Crop Type" method="post" action="lc.php">

     <center>
            <h2 align="center">Lesser Known Crops</h2>

         
            <strong> Select Type : </strong> 
            <select name="Name"> 
               <option value=""> ------ALL------ </option> 
            <?php
		$con=mysqli_connect('localhost','root','','agriculture1');
			
		$query="Select distinct Category from lesser_known_crops";
                 $resi=mysqli_query($con,$query);
  			
                 while($r=mysqli_fetch_assoc($resi))
                 { 
			echo "HELLO";
			$crop_type=$r['Type'];
                       echo "<option value=\"$crop_type\">".$r['Type']."</option>";
                 }
             ?>
              </select>
     <input type="submit" name="find" value="find"/> 
     <br><br>
  
   <table border="1">
 <tr align="center">
     <th>Name </th>      <th>Type</th>   

 </tr> 
 
 <?php
  if($_SERVER['REQUEST_METHOD'] == "POST")
  {
         $des=$_POST["Name"]; 
		$res=mysqli_query($con,$query);
         if($des=="")  

         { $query="Select Name, Type from lesser_known_crops";
             $res=mysqli_query($con,$query);
         }
         else
         { $query="Select Name,Type from crops where Type=\"$des\"";
             $res=mysqli_query($con,$query);
         }
  
         echo "<tr><td colspan='2'></td></tr>";
         while($r=mysqli_fetch_assoc($res))
         {
		echo"<tr><td>".$r['Name']."</td><td>".$r['Type']."</td></tr>";
        }
    }
?>
  </table>
 </center>
</form>
</body>
</html>