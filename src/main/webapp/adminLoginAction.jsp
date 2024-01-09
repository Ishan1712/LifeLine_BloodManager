<%
String username = request.getParameter("username");
String password = request.getParameter("password");
if("ishan".equals(username)&& "ishan17".equals(password)){
	response.sendRedirect("myhome.jsp");
}
else{
	response.sendRedirect("adminLogin.jsp?msg=invalid");
}
%>