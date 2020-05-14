<?php

//login.php

include('admin/database_connection.php');

session_start();

if(isset($_SESSION["admin_id"]))
{
  header('location:index.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>JIM Student Attendance System</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
  <section style="background-color:#4da6ff">
    <div class="forms23-block-hny">
      <div class="wrapper">
	    <button type="button" class="btn btn-warning" href="http://localhost/project/StudentAMS1/admin/login.php">Admin Login</button>
        <center><h1>JIM ERP</h1></center>
        <!--
          <a class="logo" href="index.html">
            <img src="logo.jpg" alt="Your logo" title="Your logo" style="height:100px;" />
          </a> 
        -->
        <div class="d-grid forms23-grids">
          <div class="form23">
            <div class="main-bg">
              <h6 class="sec-one">Teacher Login</h6>
              <div class="speci-login first-look">
                <img src="admin/images/user.png" alt="" class="img-responsive">
              </div>
            </div>
            <div class="bottom-content">
              <form method="post" id="teacher_login_form">
            
              <input type="text" name="teacher_emailid" id="teacher_emailid" class="input-form" placeholder="Your Email" required="required"/>
              <span id="error_teacher_emailid" class="text-danger"></span>            
              <input type="password" name="teacher_password" id="teacher_password" class="input-form" placeholder="Your Password" required="required"/>
              <span id="error_teacher_password" class="text-danger"></span>
              <button type="submit" name="teacher_login" id="teacher_login" class="loginhny-btn btn">Login</button>
              </form>
            </div>
          </div>
        </div>
        <div class="col-md-4">
        <!-- Footer-->
        </div>
        <div class="w3l-copy-right text-center">
          <p>© 2020 JIM ERP. All rights reserved | Design by Nitin Gupta
            <a href="http://jimkanpur.ac.in/" target="_blank">JIM|ERP</a></p>
        </div>
      </div>
    </div>
  </section>
</body>
</html>

<script>
$(document).ready(function(){
  $('#teacher_login_form').on('submit', function(event){
    event.preventDefault();
    $.ajax({
      url:"check_teacher_login.php",
      method:"POST",
      data:$(this).serialize(),
      dataType:"json",
      beforeSend:function(){
        $('#teacher_login').val('Validate...');
        $('#teacher_login').attr('disabled','disabled');
      },
      success:function(data)
      {
        if(data.success)
        {
          location.href="index.php";
        }
        if(data.error)
        {
          $('#teacher_login').val('Login');
          $('#teacher_login').attr('disabled', false);
          if(data.error_teacher_emailid != '')
          {
            $('#error_teacher_emailid').text(data.error_teacher_emailid);
          }
          else
          {
            $('#error_teacher_emailid').text('');
          }
          if(data.error_teacher_password != '')
          {
            $('#error_teacher_password').text(data.error_teacher_password);
          }
          else
          {
            $('#error_teacher_password').text('');
          }
        }
      }
    })
  });
});
</script>