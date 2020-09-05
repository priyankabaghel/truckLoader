<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Owner Homer</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style type="text/css">
body {
	background-image: url("drawable/ownerHome.jpg");
	background-repeat: no-repeat;
	background-size: cover;
}

.text span {
	font-size: 15px;
}

.box {
	padding: 60px 0px;
}

h1 {
	text-align: center;
}

.container {
	margin-top: 50px;
}

.box-part {
	background: white;
	border-radius: 0;
	padding: 60px 10px;
	margin: 30px 0px;
	transition: transform 0.3s ease-out;
}

.box-part:hover {
	transform: scale(1.1, 1.1);
}

.text {
	margin: 20px 0px;
}

.btn {
	font-size: 16px;
	font-weight: bold;
	background: linear-gradient(to bottom left, #EF8D9C 40%, #FFC39E 100%);
	margin-top: 50px;
	border-color: light grey;
	border-radius: 50px;
	border: none;
	min-width: 140px;
	outline: none !important;
	color: white;
}

.btn:hover, .btn:focus {
	background: linear-gradient(to top right, #EF8D9C 40%, #FFC39E 100%);
	border: white;
}

.fa {
	color: #4183D7;
}

a:hover, a:focus, a:active {
	outline: none;
}

#fadeout {
	opacity: 1;
	transition: 1s opacity;
	text-align: center;
	font-size: 32px;
}
</style>

<script type="text/javascript">
	history.pushState(null, null, location.href);
	history.back();
	history.forward();
	window.onpopstate = function() {
		history.go(1);
	};
</script>

<script type="text/javascript">
	window.onload = function() {
		window.setTimeout(fadeout, 2000); //8 seconds
	}

	function fadeout() {
		document.getElementById('fadeout').style.opacity = '0';
	}
</script>


</head>
<body>
	<%@include file="header.html"%>
	
	<div class="box">
		


		<center>

			<div style="margin-top: 50px;" id="fadeout">${successful}</div>
		</center>


		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="box-part text-center">
						<div class="title">
							<h4>Add More Truck Details</h4>
						</div>
						<div class="text">
							<span>It will redirect to the page where you can add a
							truck deatils.</span> <a href="ownerRegister"><button
									type="submit" class="btn btn-block">Add</button></a>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="box-part text-center">
						<div class="title">
							<h4>Update Owner</h4>
						</div>
						<div class="text">
							<span>It will redirect to the page where you can update
								owner details.</span> <a href="ownerList"><button type="submit"
									class="btn btn-block">Update</button></a>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="box-part text-center">
						<div class="title">
							<h4>Check Bookings</h4>
						</div>
						<div class="text">
							<span>It will redirect to the page where you can check
								Bookings.</span> <a href="checkBooking"><button type="submit"
									class="btn btn-block">Check</button></a>
						</div>
					</div>
				</div>
				<!-- <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="box-part text-center">
						<div class="title">
							<h4>Update Event</h4>
						</div>
						<div class="text">
							<span>It will redirect to the page where you can update
								Events </span> <a href="listEvent"><button type="submit"
									class="btn btn-block">Update</button></a>
						</div>
					</div>
				</div>


				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="box-part text-center">
						<div class="title">
							<h4>Event Report</h4>
						</div>
						<div class="text">
							<span>It will redirect to the page where you can see the
								Report </span> <a href="listEventReport"><button type="submit"
									class="btn btn-block">Report</button></a>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="box-part text-center">
						<div class="title">
							<h4>Cancel Event</h4>
						</div>
						<div class="text">
							<span>It will redirect to the page where you can cancel an
								Event </span> <a href="listEventD"><button type="submit"
									class="btn btn-block">Cancel</button></a>
						</div>
					</div>
				</div>
 -->


			</div>
		</div>
	</div>
</body>
</html>


