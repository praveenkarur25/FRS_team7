<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!DOCTYPE html>
<html>
<head>
	<title>admin-main</title>
   
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

	<link rel="stylesheet" type="text/css" href="styles.css">
	
</head>
<style>
@import url('https://fonts.googleapis.com/css?family=Numans');
@import url('https://fonts.googleapis.com/css?family=Gothic+A1|Kaushan+Script|Libre+Baskerville|Lobster');
.body{
	font-family: 'Numans', sans-serif;
	font-size:16px;
	}
	p{
	color:black;
	font-size:1em;
	}
.navbar-brand  span{
	color: #FFC312;
	font-size:25px;font-weight:700;letter-spacing:0.1em;
    font-family: 'Numans', sans-serif;
}
.navbar-brand {
	color: #fff;
	font-size:25px;
    font-family: 'Numans', sans-serif;
	font-weight:700;
	letter-spacing:0.1em;
}
.navbar-nav .nav-item .nav-link{
	padding: 1.1em 1em!important;
	font-size: 120%;
    font-weight: 500;
    letter-spacing: 1px;
    color: #fff!important;
   font-family: 'Numans', sans-serif;
}
.navbar-nav .nav-item .nav-link:hover{color:#FFC312 !important;}
.navbar-expand-md .navbar-nav .dropdown-menu{
	border-top:3px solid #fed136;
}
.dropdown-item:hover{background-color:#FFC312;color:#fff;}
nav{-webkit-transition: padding-top .3s,padding-bottom .3s;
    -moz-transition: padding-top .3s,padding-bottom .3s;
    transition: padding-top .3s,padding-bottom .3s;
    border: none;
	}
	
 .shrink {
    padding-top: 0;
    padding-bottom: 0;
    background-color: #212529;
  
}

html,body{
background-image: url('https://static.toiimg.com/thumb/65576160/Airplane.jpg?width=748&height=499');
background-size: cover;
background-repeat: no-repeat;
height: 100%;
font-family: 'Numans', sans-serif;
}
.navbar{
	background-color:#003973;
}
.dropdown-item:hover{
	background-color:#ffc312;
}
.container{
height:30%;
}
.card{
height: 340px;
margin-top: 20 px;
margin-bottom: auto;

width: 400px;
background-color: rgba(0,0,0,0.5) !important;
}
.card-title h1{
color: white;
text-align: center;
padding:20px 10px 0px 30px;
}
.card-header h3{
color: white;
text-align: center;
}
input:focus{
outline: 0 0 0 0  !important;
box-shadow: 0 0 0 0 !important;
}
.login_btn{
color: black;
background-color: #FFC312;
width: 100px;
}
.login_btn:hover{
color: black;
background-color: white;
}
.links{
color: white;
}
.links a{
margin-left: 6px;
color:#FFC312;
}
.btn {
  -webkit-transition: 0.3s;
  -o-transition: 0.3s;
  transition: 0.3s;
}
.btn {
  text-transform: uppercase;
  letter-spacing: 1px;
  -webkit-transition: 0.3s;
  -o-transition: 0.3s;
  transition: 0.3s;
}
.btn.btn-primary {
  background: #FFC312;
  color: #fff;
  border: none !important;
  border: 2px solid transparent !important;
}
.btn.btn-primary:hover, .btn.btn-primary:active, .btn.btn-primary:focus {
  box-shadow: none;
  background: #FFC312;
  color: #303030 !important;
}
.btn:hover, .btn:active, .btn:focus {
  background: white !important;
  color: #fff;
  outline: none !important;
}
.btn.btn-default:hover, .btn.btn-default:focus, .btn.btn-default:active {
  border-color: transparent;
}
.btn.btn-outline {
  background: transparent;
  color: #FFC312;
  border: 2px solid #FFC312 !important;
}
.btn.btn-outline:hover, .btn.btn-outline:focus, .btn.btn-outline:active {
  background: #FFC312 !important;
  color: #fff !important;
}
.tab-content .btn {
  letter-spacing: 0;
  text-transform: none;
  font-weight: bold;
  font-size: 18px;
}
.sidenav {
  height: 100%;
  width: 200px;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #003973;
  overflow-x: hidden;
  padding-top: 20px;
}
.sidenav a {
  padding: 6px 6px 6px 32px;
  text-decoration: none;
  font-size: 20px;
  color: white;
  display: block;
}
.sidenav a:hover {
  color: #ffc312;
}
</style>

<body >

<nav class="navbar navbar-expand-md navbar-dark fixed-top" id="banner">
	<div class="container">
  <!-- Brand -->
  <a class="navbar-brand" style="color:white;"><i class="fas fa-plane"
				style="font-size: 25px; color: #ffc312;"></i>XYZ FLIGHT SERViCES <i class="fas fa-plane"
				style="font-size: 25px; color: #ffc312;"></i></a>

  <!-- Toggler/collapsibe Button -->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>

  <!-- Navbar links -->
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav ml-auto">
      <!-- <li class = "nav-item">
       <a class="nav-link" ><i class="fas fa-user">Welcome<% %></i></a>
      </li> -->
      <li class = "nav-item">
       <a class="nav-link" href="http://localhost:9080/FRS/Flights.jsp"><i class="fas fa-home"></i> Home</a>
      </li>
      
      <li class="nav-item dropdown"><a
		class="nav-link dropdown-toggle" href="#" style="color: #fff;" id="navbardrop"
		data-toggle="dropdown"><i class="fas fa-cog"></i> Settings </a>
		<div class="dropdown-menu">
			<a class="dropdown-item" href="http://localhost:9080/FRS/Admin_change_password.jsp"><i class="fas fa-key"></i> Change Password</a>
			<a class="dropdown-item" href="http://localhost:9080/FRS/Logout.jsp" id="logout" onClick="return confirmed()"><i class="fas fa-sign-out-alt"> Logout</i></a>
		</div>
	</li>
      
      <!-- <li class="nav-item">
        <a class="nav-link" href="http://localhost:9080/FRS/Logout.jsp" id="logout" onClick="return confirmed()"><i class="fas fa-sign-out-alt">Logout</i></a>
      </li> -->
    </ul>
  </div>
</div>
</nav>

<section id="about">
<div class="container">
	<div class="text-intro">
	
		<p></p>
	</div>
</div>
</section>
<div>

<div class="container">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
				<h3>Change Password</h3>

			</div>
		<% 	String userid = (String)request.getParameter("userid");%>
		<div class="card-body">
		<form name="register" action="changepassword" method="post">
		<div style="color:#ff0000;" >${status}</div>
			<div class="input-group form-group">
			<input type="text" name ="userid" value=<%=userid %> hidden>
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<input type="password" name="old" class="form-control" 
							placeholder="old password" minlength="8" maxlength="16" id="password-field" required>
							
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<input type="password" name="newpass" class="form-control"  
							placeholder="new password" minlength="8" maxlength="16" id="password-field" required>
							
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<input type="password" name="confirm" class="form-control"  
							placeholder="confirm password" minlength="8" maxlength="16" id="password-field" required>
							
					</div>
					
			<div class="row">
				<div class="col text-center">
					<input type="submit" class="btn btn-primary" value="Save Changes" onclick="return validation()">
				</div>
			</div>
			</form>	
		</div>
	</div>
</div>
</div>


</body>

<script>
$(document).on("scroll", function(){
	if
  ($(document).scrollTop() > 86){
	  $("#banner").addClass("shrink");
	}
	else
	{
		$("#banner").removeClass("shrink");
	}
});
</script>

<script>
function confirmed()
{
	if(confirm('Are you sure want to logout?')) {
        return true;
    }

    return false;
	}

</script>

<script>
$(".toggle-password").click(function(){
	
	$(this).toggleClass("fa-eye fa-eye-slash");
	var input = $($(this).attr("toggle"));
	if(input.attr("type")=="password"){
		input.attr("type","text");
	}else{
		input.attr("type","password");
	}
});
</script>
<script>
$(".toggl-password").click(function(){
	
	$(this).toggleClass("fa-eye fa-eye-slash");
	var input = $($(this).attr("toggle"));
	if(input.attr("type")=="password"){
		input.attr("type","text");
	}else{
		input.attr("type","password");
	}
});
</script>
<script>
function validation() {

		pass = document.register.confirm.value;

		var regularExpression = /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{8,16}$/;
		
		if (!regularExpression.test(pass)) {
			alert("Password should contain atleast 8 characters with atleast one number and one special character.");
			return false;
			

		}
		else

		return check();
	}
	</script>
	<script>
	
	function check() {
		var oldpass = document.register.old.value;
		var newpass = document.register.newpass.value;
		var confirmpass = document.register.confirm.value;
		
		if(newpass===confirmpass){
			if(oldpass == newpass){
				alert("Old password and new password is same.!!!")
				return false;
			}
			else{
			if(confirm("Are you sure want to change password?")){
				return true;
			}
			else
				return false;
			
			}
			}
		else{
			alert("New password and confirm password is not same.!!!")
			return false;
		}
			
		}
	</script>



</html>