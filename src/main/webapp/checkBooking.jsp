<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Booking details</title>
<style type="text/css">
@import "compass/css3";
h1 {
	font-size: 70px;
	font-weight: 400;
	text-align: center;
	margin-bottom: 150px;
	font-family: 'Kaushan Script';
	color: #fff;
}
.responstable {
	margin: 1em 0;
	width: 60%;
	overflow: hidden;
	background: #FFF;
	color: #024457;
	border-radius: 20px;
	margin-top:0;
}

.responstable tr {
	border: 1px solid #D9E4E6;
}

.responstable tr:nth-child(odd) {
	background-color: #EAF3F3;
}

.responstable th {
	display: none;
	border: 1px solid #FFF;
	background-color: #167F92;
	color: #FFF;
	padding: 1em;
}

.responstable th:first-child {
	display: table-cell;
	text-align: center;
}

.responstable th:nth-child(2) {
	display: table-cell;
}

.responstable th:nth-child(2) span {
	display: none;
}

.responstable th:nth-child(2):after {
	content: attr(data-th);
}

@media ( min-width : 480px) {
	.responstable th:nth-child(2) span {
		display: block;
	}
	.responstable th:nth-child(2):after {
		display: none;
	}
}

.responstable td {
	display: block;
	word-wrap: break-word;
	max-width: 7em;
}

.responstable td:first-child {
	display: table-cell;
	text-align: center;
	border-right: 1px solid #D9E4E6;
}

@media ( min-width : 480px) {
	.responstable td {
		border: 1px solid #D9E4E6;
	}
}

.responstable th, .responstable td {
	text-align: left;
	margin: 0.5em 1em;
}

@media ( min-width : 480px) {
	.responstable th, .responstable td {
		display: table-cell;
		padding: 1em;
	}
}

 body {
    height:100%;
	padding: 0 2em;
	font-family: Arial, sans-serif;
	color: #024457;
	background-image: url("drawable/truckLoaders.jpg");
	background-repeat: no-repeat;
	background-size: cover;
	
} 

.h1 {
	font-family: Verdana;
	font-weight: normal;
	color: white;
	text-align: center;
	margin-top: 100px;
}

#fadeout {
	opacity: 1;
	transition: 1s opacity;
	text-align: center;
	font-size: 32px;
}
.heading{
margin-top:150px;

}
.form{
margin-top:20px;
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
</head>


<body>
 <%@include file="ownerHeader.html"%> 
	
	<h1 class="heading" style="color:black">Booking Details</h1>

	
	
	<form:form action="bookTruck" class="form" >

		<table class="responstable">

			<tr>

				<th>Customer Name</th>
				<th>Truck  Number</th>
				<th>Contact</th>
				
			</tr>
			<c:forEach var="booking" items="${booking}">
				<tr>
					<td>${booking.getCustomerName()}</td>
					<td>${booking.getTruckNo() }</td>
					

<td><button type="submit" 
							value="Book">Contact Now</button></td>
			


				</tr>

			</c:forEach>
				

		</table>

	</form:form>


</body>
</html>