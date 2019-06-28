<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page language="java"%>
<%@page import="com.frs.xyz.util.DBUtil"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
	<title>User Page</title>
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"crossorigin="anonymous">
    <link rel="stylesheet" href="css/bootstrap-datepicker.min.css">
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
	h2{
	color:white;
	font-family: 'Numans', sans-serif;
	}
html,body{
background-image: url('https://static.toiimg.com/thumb/65576160/Airplane.jpg?width=748&height=499');
background-size: cover;
background-repeat: no-repeat;
height: 100%;
font-family: 'Numans', sans-serif;
}
.container{
height: 10%;
}
/* Float four columns side by side */
.column1 {
  float: left;
  width: 25%;
  padding: 0 10px;
}
.column2 {
  float: left;
  width: 75%;
  padding: 0 10px;
}
/* Remove extra left and right margins, due to padding */
.row {margin: 0 -5px;}
/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
/* Responsive columns */
@media screen and (max-width: 600px) {
  .column1 {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
  .column2 {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}
.card{
height: 525px;
margin-top: 10;
margin-bottom: auto;
background-color: rgba(0,0,0,0.5) !important;
overflow-x:auto;
}
.card-title h1{
color: white;
text-align: center;
padding:20px 10px 0px 30px;
}
.card-header h6{
color: white;
text-align: center;
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

.seatClass{
	color:white;
	margin-left:0px;
}
.btn:hover{
	background-color:#ffc312;
	color:black;
	border:none !important;
}
.btn:active{
	background:black;
	border:none !important;
}
.btn:focus{
		border:none !important;
}
.btn:disabled{
	background:grey;
	border:none !important;
}
.tname{
	background:#007bff;
}
<!-- SEAT LAYOUT -->
.ol {
  list-style: none;
}
.seats {
 display: flex;
 
  height:20px;
}
.seat {
  display: flex;
  flex: 0 0 12.28571428571429% !important;
  padding: 2px;
  position: relative ;
  width:40px;
  height:20px;
}
.seat:nth-child(3) {
  margin-right: 7%;
}
.seat:nth-child(6) {
  margin-right: 5%;
}
.seat input[type=checkbox] {
  
  position: absolute;
  opacity: 0;
}
.seat input[type=checkbox]:checked + label {
  background: blue;
}
.seat input[type=checkbox]:disabled + label {
  background: grey;
  overflow: hidden;
  display: block;
  position: relative;
  width: 100%;
  text-align: center;
  font-size: 15px;
  font-weight: bold;
  line-height: 1rem;
  padding: 5px 2px !important;
  border-radius: 3px;
  margin-bottom: -0.9rem;
}
.seat input[type=checkbox]:disabled + label:after {
  content: "";
  text-indent: 0;
  position: absolute;
  top: 5px;
  left: 50%;
  transform: translate(-50%, 0%);
}
.seat input[type=checkbox]:disabled + label:hover {
  box-shadow: none;
  cursor: not-allowed;
}
.seat label {
  display: block;
  position: relative;
  width: 100%;
  text-align: center;
  font-size: 11px;
  font-weight: bold;
  line-height: 1rem;
  padding: 5px 2px !important;
  background:#007bff;
  border-radius: 3px;
  margin-bottom: -.9rem;
 
}
.seat label:before {
  content: "";
  position: absolute;
  width: 75%;
  top: 0px;
  left: 50%;
  transform: translate(-50%, 0%);
  background: rgba(255, 255, 255, 0.4);
  border-radius: 3px;
}
.seat label:hover {
  cursor: pointer;
  box-shadow:blue;
  background:#FFC312;
}
.seat label:active {
background:blue;
}
.seat label:focus {
background:blue;
}
</style>
<body>


 
			<div class="column1">
				<div class="card">
					<div class="card-body">
						<h2 class="card-title text-white text-start">Seat Layout</h2><br><br>
					
				 	<div class="input-group form-group  d-flex justify-content-center seatClass">
								<h6 class="text-white ml-3 mb-0">Economy Class</h6><br><br>
				    <div class="wrapper">
				  
				      <%   Connection connection = null;
PreparedStatement preparedStatement = null;
ResultSet resultSet = null;
String seats ="";
String flightid =(String)request.getParameter("flightid");
String dateofjourney = (String)request.getParameter("date");

String sql ="select seats from frs_tbl_booking_details where flightid ='"+flightid+"' and dateofjourney= '"+dateofjourney+"'";
	

	try {
		connection = DBUtil.getConnection();
		preparedStatement = connection.prepareStatement(sql);
		resultSet = preparedStatement.executeQuery();
		while (resultSet.next()) {
			seats = seats + resultSet.getString("seats");
		}
		//out.println(seats);
		
	}
		catch(Exception e){
			e.printStackTrace();
		}
				  %>
				 
				      <ol class="seats" type="A">
				       <%if(seats.contains("A1")){ %>
				        <li class="seat">
				         <input type="checkbox" id="A1" name="Economy"  value="A1" disabled />
				          <label for="A1">01</label>
				        </li>
				        <%} 
				       else{%>
				        <li class="seat">
				         <input type="checkbox" id="A1" name="Economy"  value="A1" />
				          <label for="A1">01</label>
				        </li>
				        <%} %>
				         <%if(seats.contains("A2")){ %>
				        <li class="seat">
				         <input type="checkbox" id="A2" name="Economy"  value="A2" disabled />
				          <label for="A2">02</label>
				        </li>
				        <%} 
				       else{%>
				        <li class="seat">
				         <input type="checkbox" id="A2" name="Economy"  value="A2" />
				          <label for="A2">02</label>
				        </li>
				        <%} %>
				         <%if(seats.contains("A3")){ %>
				        <li class="seat">
				         <input type="checkbox" id="A3" name="Economy"  value="A3" disabled />
				          <label for="A3">03</label>
				        </li>
				        <%} 
				       else{%>
				        <li class="seat">
				         <input type="checkbox" id="A3" name="Economy"  value="A3" />
				          <label for="A3">03</label>
				        </li>
				        <%} %>
				         <%if(seats.contains("A4")){ %>
				        <li class="seat">
				         <input type="checkbox" id="A4" name="Economy"  value="A4" disabled />
				          <label for="A4">04</label>
				        </li>
				        <%} 
				       else{%>
				        <li class="seat">
				         <input type="checkbox" id="A4" name="Economy"  value="A4" />
				          <label for="A4">04</label>
				        </li>
				        <%} %>
				         <%if(seats.contains("A5")){ %>
				        <li class="seat">
				         <input type="checkbox" id="A5" name="Economy"  value="A5" disabled />
				          <label for="A5">05</label>
				        </li>
				        <%} 
				       else{%>
				        <li class="seat">
				         <input type="checkbox" id="A5" name="Economy"  value="A5" />
				          <label for="A5">05</label>
				        </li>
				        <%} %>
				         <%if(seats.contains("A6")){ %>
				        <li class="seat">
				         <input type="checkbox" id="A6" name="Economy"  value="A6" disabled />
				          <label for="A6">06</label>
				        </li>
				        <%} 
				       else{%>
				        <li class="seat">
				         <input type="checkbox" id="A6" name="Economy"  value="A6" />
				          <label for="A6">06</label>
				        </li>
				        <%} %>A
				        </ol>
				        
			          <ol class="seats" type="A">
				       <%if(seats.contains("B1")){ %>
				        <li class="seat">
				         <input type="checkbox" id="B1" name="Economy"  value="B1" disabled />
				          <label for="B1">01</label>
				        </li>
				        <%} 
				       else{%>
				        <li class="seat">
				         <input type="checkbox" id="B1" name="Economy"  value="B1" />
				          <label for="B1">01</label>
				        </li>
				        <%} %>
				         <%if(seats.contains("B2")){ %>
				        <li class="seat">
				         <input type="checkbox" id="B2" name="Economy"  value="B2" disabled />
				          <label for="B2">02</label>
				        </li>
				        <%} 
				       else{%>
				        <li class="seat">
				         <input type="checkbox" id="B2" name="Economy"  value="B2" />
				          <label for="B2">02</label>
				        </li>
				        <%} %>
				         <%if(seats.contains("B3")){ %>
				        <li class="seat">
				         <input type="checkbox" id="B3" name="Economy"  value="B3" disabled />
				          <label for="B3">03</label>
				        </li>
				        <%} 
				       else{%>
				        <li class="seat">
				         <input type="checkbox" id="B3" name="Economy"  value="B3" />
				          <label for="B3">03</label>
				        </li>
				        <%} %>
				         <%if(seats.contains("B4")){ %>
				        <li class="seat">
				         <input type="checkbox" id="B4" name="Economy"  value="B4" disabled />
				          <label for="B4">04</label>
				        </li>
				        <%} 
				       else{%>
				        <li class="seat">
				         <input type="checkbox" id="B4" name="Economy"  value="B4" />
				          <label for="B4">04</label>
				        </li>
				        <%} %>
				         <%if(seats.contains("B5")){ %>
				        <li class="seat">
				         <input type="checkbox" id="B5" name="Economy"  value="B5" disabled />
				          <label for="B5">05</label>
				        </li>
				        <%} 
				       else{%>
				        <li class="seat">
				         <input type="checkbox" id="B5" name="Economy"  value="B5" />
				          <label for="B5">05</label>
				        </li>
				        <%} %>
				         <%if(seats.contains("B6")){ %>
				        <li class="seat">
				         <input type="checkbox" id="B6" name="Economy"  value="B6" disabled />
				          <label for="B6">06</label>
				        </li>
				        <%} 
				       else{%>
				        <li class="seat">
				         <input type="checkbox" id="B6" name="Economy"  value="B6" />
				          <label for="B6">06</label>
				        </li>
				        <%} %>B
				        </ol>
				    <ol class="seats" type="A">
				       <%if(seats.contains("C1")){ %>
				        <li class="seat">
				         <input type="checkbox" id="C1" name="Economy"  value="C1" disabled />
				          <label for="C1">01</label>
				        </li>
				        <%} 
				       else{%>
				        <li class="seat">
				         <input type="checkbox" id="C1" name="Economy"  value="C1" />
				          <label for="C1">01</label>
				        </li>
				        <%} %>
				         <%if(seats.contains("C2")){ %>
				        <li class="seat">
				         <input type="checkbox" id="C2" name="Economy"  value="C2" disabled />
				          <label for="C2">02</label>
				        </li>
				        <%} 
				       else{%>
				        <li class="seat">
				         <input type="checkbox" id="C2" name="Economy"  value="C2" />
				          <label for="C2">02</label>
				        </li>
				        <%} %>
				         <%if(seats.contains("C3")){ %>
				        <li class="seat">
				         <input type="checkbox" id="C3" name="Economy"  value="C3" disabled />
				          <label for="C3">03</label>
				        </li>
				        <%} 
				       else{%>
				        <li class="seat">
				         <input type="checkbox" id="C3" name="Economy"  value="C3" />
				          <label for="C3">03</label>
				        </li>
				        <%} %>
				         <%if(seats.contains("C4")){ %>
				        <li class="seat">
				         <input type="checkbox" id="C4" name="Economy"  value="C4" disabled />
				          <label for="C4">04</label>
				        </li>
				        <%} 
				       else{%>
				        <li class="seat">
				         <input type="checkbox" id="C4" name="Economy"  value="C4" />
				          <label for="C4">04</label>
				        </li>
				        <%} %>
				         <%if(seats.contains("C5")){ %>
				        <li class="seat">
				         <input type="checkbox" id="C5" name="Economy"  value="C5" disabled />
				          <label for="C5">05</label>
				        </li>
				        <%} 
				       else{%>
				        <li class="seat">
				         <input type="checkbox" id="C5" name="Economy"  value="C5" />
				          <label for="C5">05</label>
				        </li>
				        <%} %>
				         <%if(seats.contains("C6")){ %>
				        <li class="seat">
				         <input type="checkbox" id="C6" name="Economy"  value="C6" disabled />
				          <label for="C6">06</label>
				        </li>
				        <%} 
				       else{%>
				        <li class="seat">
				         <input type="checkbox" id="C6" name="Economy"  value="C6" />
				          <label for="C6">06</label>
				        </li>
				        <%} %>C
				        </ol>  <ol class="seats" type="A">
				        <%if(seats.contains("D1")){ %>
				        <li class="seat">
				         <input type="checkbox" id="D1" name="Economy"  value="D1" disabled />
				          <label for="D1">01</label>
				        </li>
				        <%} 
				       else{%>
				        <li class="seat">
				         <input type="checkbox" id="D1" name="Economy"  value="D1" />
				          <label for="D1">01</label>
				        </li>
				        <%} %>
				         <%if(seats.contains("D2")){ %>
				        <li class="seat">
				         <input type="checkbox" id="D2" name="Economy"  value="D2" disabled />
				          <label for="D2">02</label>
				        </li>
				        <%} 
				       else{%>
				        <li class="seat">
				         <input type="checkbox" id="D2" name="Economy"  value="D2" />
				          <label for="D2">02</label>
				        </li>
				        <%} %>
				         <%if(seats.contains("D3")){ %>
				        <li class="seat">
				         <input type="checkbox" id="D3" name="Economy"  value="D3" disabled />
				          <label for="D3">03</label>
				        </li>
				        <%} 
				       else{%>
				        <li class="seat">
				         <input type="checkbox" id="D3" name="Economy"  value="D3" />
				          <label for="D3">03</label>
				        </li>
				        <%} %>
				         <%if(seats.contains("D4")){ %>
				        <li class="seat">
				         <input type="checkbox" id="D4" name="Economy"  value="D4" disabled />
				          <label for="D4">04</label>
				        </li>
				        <%} 
				       else{%>
				        <li class="seat">
				         <input type="checkbox" id="D4" name="Economy"  value="D4" />
				          <label for="D4">04</label>
				        </li>
				        <%} %>
				         <%if(seats.contains("D5")){ %>
				        <li class="seat">
				         <input type="checkbox" id="D5" name="Economy"  value="D5" disabled />
				          <label for="D5">05</label>
				        </li>
				        <%} 
				       else{%>
				        <li class="seat">
				         <input type="checkbox" id="D5" name="Economy"  value="D5" />
				          <label for="D5">05</label>
				        </li>
				        <%} %>
				         <%if(seats.contains("D6")){ %>
				        <li class="seat">
				         <input type="checkbox" id="D6" name="Economy"  value="D6" disabled />
				          <label for="D6">06</label>
				        </li>
				        <%} 
				       else{%>
				        <li class="seat">
				         <input type="checkbox" id="D6" name="Economy"  value="D6" />
				          <label for="D6">06</label>
				        </li>
				        <%} %>D
				      </ol>
				      <ol class="seats" type="A">
				        <%if(seats.contains("E1")){ %>
				        <li class="seat">
				         <input type="checkbox" id="E1" name="Economy"  value="E1" disabled />
				          <label for="E1">01</label>
				        </li>
				        <%} 
				       else{%>
				        <li class="seat">
				         <input type="checkbox" id="E1" name="Economy"  value="E1" />
				          <label for="E1">01</label>
				        </li>
				        <%} %>
				         <%if(seats.contains("E2")){ %>
				        <li class="seat">
				         <input type="checkbox" id="E2" name="Economy"  value="E2" disabled />
				          <label for="E2">02</label>
				        </li>
				        <%} 
				       else{%>
				        <li class="seat">
				         <input type="checkbox" id="E2" name="Economy"  value="E2" />
				          <label for="E2">02</label>
				        </li>
				        <%} %>
				         <%if(seats.contains("E3")){ %>
				        <li class="seat">
				         <input type="checkbox" id="E3" name="Economy"  value="E3" disabled />
				          <label for="A3">03</label>
				        </li>
				        <%} 
				       else{%>
				        <li class="seat">
				         <input type="checkbox" id="E3" name="Economy"  value="E3" />
				          <label for="E3">03</label>
				        </li>
				        <%} %>
				         <%if(seats.contains("E4")){ %>
				        <li class="seat">
				         <input type="checkbox" id="E4" name="Economy"  value="E4" disabled />
				          <label for="E4">04</label>
				        </li>
				        <%} 
				       else{%>
				        <li class="seat">
				         <input type="checkbox" id="E4" name="Economy"  value="E4" />
				          <label for="E4">04</label>
				        </li>
				        <%} %>
				         <%if(seats.contains("E5")){ %>
				        <li class="seat">
				         <input type="checkbox" id="E5" name="Economy"  value="E5" disabled />
				          <label for="E5">05</label>
				        </li>
				        <%} 
				       else{%>
				        <li class="seat">
				         <input type="checkbox" id="E5" name="Economy"  value="E5" />
				          <label for="E5">05</label>
				        </li>
				        <%} %>
				         <%if(seats.contains("E6")){ %>
				        <li class="seat">
				         <input type="checkbox" id="E6" name="Economy"  value="E6" disabled />
				          <label for="E6">06</label>
				        </li>
				        <%} 
				       else{%>
				        <li class="seat">
				         <input type="checkbox" id="E6" name="Economy"  value="E6" />
				          <label for="E6">06</label>
				        </li>
				        <%} %>E
				       </ol>
				    </div> 
			</div>
					<div class="row">
						<div class="col-5">
							<span class="total-score text-white" id="count"><h6 class="mt-2">Seat : <span class="number">0</span></span></h6>
 						</div>
 						<div class="col-3">
							<input type="button" onclick="return validation()" class="btn btn-primary btn-sm-2 ml-4 verify " value="done">
 						</div>
 					</div>		
			</div>
		</div>
	</div>
</body>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap-datepicker.min.js"></script>
	<script src="js/main.js"></script>
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

<script type="text/javascript">
<%		int adult =(Integer.parseInt(request.getParameter("adult")));
%>
		var count=0;
		var prev_numall = 0;
		var numberAll=0;
		const chex = document.querySelectorAll('input[type="checkbox"]:not([disabled])');
		const total = document.querySelector('.total-score .number')
		document.querySelector('.wrapper').addEventListener('change', function(event) {
		numberAll = this.querySelectorAll('input[type="checkbox"]:checked').length
		if(prev_numall != numberAll){
			count=0;
			prev_numall = numberAll;
		}
		total.innerHTML = numberAll
		if(numberAll >= <%= adult%>){
			for(var i=0;i<chex.length;i++)
				{
				if(!chex[i].checked)
					{
					chex[i].disabled= true;
					}
				
				}
			
		}else{
			for(var i=0;i<chex.length;i++)
			{
			if(!chex[i].checked)
				{
				chex[i].disabled= false;
				}
			
			}
		}
		
		const list = event.target.closest('.list')
		const numberList = list.querySelectorAll('input[type="checkbox"]:checked').length
		list.querySelector('.list-score.number').innerHTML = numberList})
</script>
<script type="text/javascript">
		function validation()
		{
			if(numberAll><%=adult%> || numberAll<<%=adult%>){
				alert("Please select only the number of seats you requested.");
				return false;
			}else{
				count++;
			}
		}
</script>
<script type="text/javascript">
		function valid()
		{
			if(count>0){
				return true;
			}else{
				alert("Please press DONE button");
				return false;
			}
		}
</script>

</html>