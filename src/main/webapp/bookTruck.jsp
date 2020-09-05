<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Book Truck</title>
<link rel="stylesheet" type="text/css" href="style.css">
<style>
.select{
font-size:25px;
border-radius:10px;
margin-bottom:70px;
}
body {
	margin: 0;
	padding: 0;
	color: #999;
	background: url(drawable/sponsor.jpeg);
	background-size: cover;
	background-position: center;
	font-family: sans-serif;
}

.login-box {
	width: 320px;
	height: 420px;
	background: rgba(0, 0, 0, 0.5);
	color: #fff;
	top: 50%;
	left: 50%;
	position: absolute;
	transform: translate(-50%, -50%);
	box-sizing: border-box;
	padding: 70px 30px;
}

.avatar {
	width: 100px;
	height: 100px;
	border-radius: 50%;
	position: absolute;
	top: -50px;
	left: calc(50% - 50px);
}

h1 {
	margin: 0;
	padding: 0 0 20px;
	text-align: center;
	font-size: 22px;
}

.login-box p {
	margin: 0;
	padding: 0;
	font-weight: bold;
}

.login-box input {
	width: 100%;
	margin-bottom: 20px;
}

.login-box input[type="text"], input[type="password"] {
	border: none;
	border-bottom: 1px solid #fff;
	background: transparent;
	outline: none;
	height: 40px;
	color: #fff;
	font-size: 16px;
}

.login-box input[type="submit"] {
	border: none;
	outline: none;
	height: 40px;
	background: #1c8adb;
	color: #fff;
	font-size: 18px;
	border-radius: 20px;
}

.login-box input[type="submit"]:hover {
	cursor: pointer;
	background: #39dc79;
	color: #000;
}

.login-box a {
	text-decoration: none;
	font-size: 14px;
	color: #fff;
}

.login-box a:hover {
	color: #39dc79;
}
</style>
</head>
<body>
	<%@include file="customerHeader.html"%>

	<%
		String succ = (String) request.getAttribute("successful");
		if (succ != null && succ != null)
			out.println(" <div  style='color:#fff; margin-top:90px;' id='fadeout'>" + succ + "</div> ");

		String fail = (String) request.getAttribute("failed");

		if (fail != null && fail.length() != 0)
			out.println(" <div  style='color:#fff; margin-top:90px;' id='fadeout'>" + fail + "</div> ");
	%>
	<div class="login-box">
		<img src="drawable/avatar.png" class="avatar">


		<h1>Book Truck</h1>

		<form:form action="book" modelAttribute="book">
			<p>Customer Name</p>
			<form:input id="customerName" type="text" name="customerName" placeholder="Enter Username"
				path="customerName" required="required"/>
			<p>Truck Number</p>
			<form:select class="select" path="truckNo">
				<c:forEach var="list" items="${li}">
					<option id="truckNo"  value="${list.getTruckNo()}">${list.getTruckNo()},${list.getLocation()}</option>

				</c:forEach>
				
			</form:select>
			<input type="submit" name="submit" value="Book">
		</form:form>


	</div>

</body>
</html>