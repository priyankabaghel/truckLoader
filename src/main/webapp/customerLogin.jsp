<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>Customer Login</title>
<link rel="stylesheet" type="text/css" href="style.css">
<style>
body {
	margin: 0;
	padding: 0;
	color: #999;
	background: url(drawable/welcome.jpg);
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
	margin-top:30px;
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
<script type="text/javascript">
function myFunction() {
	  var x = document.getElementById("inpt");
	  if (x.type === "password") {
	    x.type = "text";
	  } else {
	    x.type = "password";
	  }
	}
</script>
</head>
<body>
<%@include file="header.html"%>
<center>
<%
		String succ = (String) request.getAttribute("successful");
		if (succ != null && succ != null)
			out.println(" <div  style='color:#fff; margin-top:90px;' id='fadeout'>" + succ + "</div> ");

		String fail = (String) request.getAttribute("failed");
		
		if (fail != null && fail.length() != 0)
			out.println(" <div  style='color:#fff; margin-top:90px;' id='fadeout'>" + fail + "</div> ");
	%>
	
	</center>
	<div class="login-box">
		<img src="drawable/avatar.png" class="avatar">
		
	
		<h1>Customer Login </h1>
		   
		<form:form action="showServices" method="post" modelAttribute="credentials">
			<p>Username</p>
			<input type="text" name="userName" placeholder="Enter Username" id="userName" required="required">
			<p>Password</p>
			<input type="password" name="password"  placeholder="Enter Password" id="inpt" required="required" >
			<input type="checkbox" onclick="myFunction()">
			<input type="submit" name="submit" value="Login"> <a href="#">Forget
				Password</a>
		</form:form>


	</div>

</body>
</html>