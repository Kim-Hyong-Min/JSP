<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- joinPro : Process -->
<h1>JOIN PRO</h1>

<%
	//post 방식의 경우 이런식으로 맞춤
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
%>

<h3>id : <%=id %></h3>
<h3>pw : <%=pw %></h3>
</body>
</html>