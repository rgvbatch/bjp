<%@page import="com.java.userbean.Userbean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%Userbean user = new Userbean(); %>
<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>
<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<%Boolean status=user.isValid();
if(status){ %>
<script>
$(document).ready(function(){
	swal("Problem Approval Failed..Try Again...")
	
	
});

</script>


<%RequestDispatcher rd=request.getRequestDispatcher("PendingProblems.jsp");
rd.include(request, response);%>
<%}else{ %>
<script>
$(document).ready(function(){
	
	swal("Problem Approved")
	
});

</script>


<%RequestDispatcher rd=request.getRequestDispatcher("PendingProblems.jsp");
rd.include(request, response);%>
<%} %>
</body>
</html>