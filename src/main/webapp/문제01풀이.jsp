<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
//구구단 출력하기
//. 2~9단까지
//. 브라우저 안에 출력
//. 표로 그리기

//[XX단]
//2X1 = 2 ...
%>
<table border="1">
<%for(int i=2; i<10; i++){%>
	<th colspan="9"><%=i %>단</th>
	<tr>
	<%for(int j=1; j<10; j++){%>
		<td><h3><%=i %> X <%=j %> = <%=i*j %></h3></td>
	<%}%>
	</tr>
<%}%>
</table>
</body>
</html>