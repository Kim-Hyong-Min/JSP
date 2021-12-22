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

table {
	width: 500px;
	height: 500px;
	font-size: 2em;
}

td {
	text-align: center;
	align-items: center;
}

div {
	display: flex;
	justify-content: center;
}
</style>
<title>gugudanPro</title>
</head>
<body>
	<%
	int total = 0;
    int answer[][] = new int [5][2];
	int check[][] = new int [5][2];
    for(int i=0; i<5; i++){
    	answer[i][0] = Integer.parseInt(request.getParameter(String.format("num%d",i+1)));
    	check[i][0] = Integer.parseInt(request.getParameter(String.format("rNum%d-1",i+1)));
    	check[i][1] = Integer.parseInt(request.getParameter(String.format("rNum%d-2",i+1)));
    	if(check[i][0]*check[i][1]==answer[i][0]){
    		answer[i][1] = 1;
    		total+=20;
    	}
    	else{
    		answer[i][1] = -1;
    	}
    }
	%>

	<table border="1">
		<tr>
			<th>번호</th>
			<th>문제</th>
			<th>답</th>
			<th>정답</th>
			<th>O/X</th>
		</tr>
		<%
       for(int i=0; i<5; i++){
    	   String str = "";
       	if(answer[i][1]==1){
     	   str = "O";
    	}
    	else{
     	   str = "X";
    	}
    	   %>
		<tr>
			<td><%=i+1 %></td>
			<td><%=check[i][0] %> X <%=check[i][1] %> =</td>
			<td><%=answer[i][0] %></td>
			<td><%=check[i][0]*check[i][1] %></td>
			<td><%=str %></td>
		</tr>
		<%
       }
       %>
	</table>
	<div>
		<h1>
			총점 :
			<%=total %>점
		</h1>
	</div>

</body>
</html>