<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Owner List</title>
<style type="text/css">
body{
background-image: url("drawable/ownerList.jpg");
	background-repeat: no-repeat;
	background-size: cover;
}
.select{
margin-top:100px;
font-size:25px;
border-radius:10px;
}
.sub{
font-size:25px;
border-radius:10px;
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

 <center>
 <form:form style="margin-top:90px; " action="updateOwner" method="get"  modelAttribute="owner">
 
<form:select class="select" path="id">  
   <c:forEach var="list" items="${li}">
       <option id="id" value="${list.getId()}">${list.getName()}</option> 
      
   </c:forEach>
</form:select>
 

<input class="sub" type="submit" value="submit">
</form:form> 

</center>
</body>
</html>