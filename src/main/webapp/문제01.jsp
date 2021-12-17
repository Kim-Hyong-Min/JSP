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

<%
String gugudan = "<tr><th colspan='8'>구구단</th>";
gugudan += "<tr>";
for(int i=2; i<10; i++){
	gugudan += "<th>"+i+"단</th>";
}
gugudan += "</tr><tr>";
for(int i=2; i<10; i++){
	gugudan += "<td>";
	for(int j=1; j<10; j++){
		gugudan += i+"X"+j+"="+i*j+"<br>";
	}
	gugudan+="</td>";
}
gugudan+="</tr>";
%>

<table border="1" style="border: solid 1px black;" width="800px" height="400px">
<%=gugudan%>
</table>

</body>
</html>