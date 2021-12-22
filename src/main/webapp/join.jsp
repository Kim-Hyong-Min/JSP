<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <style>
        span{white-space: pre;}
    </style>
    <title>Document</title>
</head>
<body>
    <h1>join</h1>
    <form method="POST" action="joinPro.jsp">
    <!-- POST = 숨겨서 전달(http://localhost:8081/webEx/joinPro.jsp) -->
    <!-- POST 방식의 경우 브라우저가 파싱(필터)를 함 -->
    	<!-- http://localhost:8081/webEx/joinPro.jsp?파라미터명=값... -->
    	<!-- 프로토콜   호스트     포트      패스         ? query~ -->
    	<!-- http://localhost:8081/webEx/joinPro.jsp?id=qwer&pw=1234 -->
        <span>id:&#9;</span><input type="text" name="id"><br><br>
        <span>pw:&#9;</span><input type="text" name="pw"><br><br>
        <input type="submit">
    </form>
    
</body>
</html>