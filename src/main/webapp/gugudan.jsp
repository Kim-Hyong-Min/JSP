<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
* {
	margin: 0;
	padding: 0;
}

body {
	width: 100vw;
	height: 80vh;
	display: grid;
	justify-content: center;
}

form {
	justify-content: center;
}

table {
	width: 500px;
	height: 500px;
	font-size: 2em;
}

td {
	text-align: center;
	align-items: center;
}

#answer {
	width: 80px;
	height: 50px;
	font-size: 1em;
}

#submit {
	width: 100px;
	height: 50px;
}

#que {
	width: 80px;
	height: 50px;
	font-size: 1em;
	text-align: center;
}

div {
	display: flex;
	justify-content: center;
}
</style>
<title>gugudan</title>
</head>
<body>
	<%--

구구단 랜덤 문제 출제 (5개)
form 안에 table 형식으로 문제와 답입력 칸 제시
사용자 입력한 답을 ->pro 페이지에서 검증 후 -> 성적표 출력 (정오표)

column : no, quiz, input
pro column : no, quiz, answer, 답, O/X -> 점수(100)
 --%>
	<form method="POST" action="gugudanPro.jsp">
		<table border="1">
			<tr>
				<th>번호</th>
				<th>문제</th>
				<th>답</th>
			</tr>
			<%
            Random rn = new Random();
            String str = "";
            int check[][] = new int [5][2];
            int cnt = 0;
            for(int i=0; i<5; i++){
            	int rNum1 = rn.nextInt(8)+2;
            	int rNum2 = rn.nextInt(9)+1;
            	int num = -1;
            	for(int j=0; j<check.length; j++){
            		if(check[j][0]==rNum1 && check[j][1]==rNum2 || check[j][0]==rNum2 && check[j][1]==rNum1){
            			num = 1;
            		}
            	}
            	if(num == -1){
            		check[cnt][0]=rNum1;
            		check[cnt][1]=rNum2;
            		cnt++;
            	%>
			<tr>
				<td><%=cnt %></td>
				<td><input id="que" type="number" value="<%=rNum1 %>" readonly
					name="rNum<%=cnt %>-1"> X <input id="que" type="number"
					value="<%=rNum2 %>" readonly name="rNum<%=cnt %>-2">=</td>
				<td><input id="answer" type="number" name="num<%=cnt%>"
					required></td>
			</tr>
			<%}
            	else{
            		i--;
            	}
            }%>
		</table>
		<br>
		<br>
		<div>
			<input type="submit" id="submit">
		</div>
	</form>

</body>
</html>