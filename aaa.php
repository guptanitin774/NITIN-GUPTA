<?php
$con = new PDO("mysql:host=localhost;dbname=attendance2","root","");
include('header.php');

?>
<html>
<body>
<div class="col-md-8">
                <select name="subject" id="subject" class="form-control">
                  <option value="">Select Subject</option>
                  <?php
                  $q = "select * from tbl_subject_list";
				  $result= mysqli_query($con,$q);
				  while($row=mysqli_fetch_array($result))
				  {
					  ?>
					  <option><?php echo $row['Subject_Name']?></option>
					  <?php
				  }
				  ?>
                </select>
                <span id="error_subject" class="text-danger"></span>
</div>
</body>
</html>