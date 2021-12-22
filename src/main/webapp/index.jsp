<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%-- jsp 주석 --%>
    <%-- JSP : Java Server Page --%>
    <%-- html 문서 안에 Java 언어가 포함되는 형식 --%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
hello world

<% //스크립틀릿 : 자바문장이 작성되는 구간을 태그로 표시한 것 
	int num = 10;

	// 표현식 : 자바변수를 가져와주는 것
%>

<h1><%=num %></h1>

<%
// 모든 자바 문장을 작성할 수 있다 (html 문서 안에서 자바의 제어문 사용이 가능)
// . 조건문 if, if-else, switch-case
// . 반복문 while, do-while, for
// . 보조제어문 break, continue

// 구구단 출력하기
// . 2~9단까지
// . 브라우저 안에 출력
// . 표로 그리기

// [XX단]
// 2X1 = 2 ...
%>



</body>
</html>