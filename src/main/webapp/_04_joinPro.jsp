<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        body{
            width: 100vw;
            height: 150vh;
            background-color: rgb(211, 208, 203);
            display: grid;
            justify-content: center;
        }
        header{
            margin-top: 20px;
        }
    </style>
    <title>Document</title>
</head>

<body>
<div>
    <header>
        <h1>가입을 축하합니다!</h1>
    </header>
    <table>
    <%
	//post 방식의 경우 이런식으로 맞춤
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String year = request.getParameter("year");
	String month = request.getParameter("month");
	String day = request.getParameter("day");
	String gender = request.getParameter("gender");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
%>
        <tr>
            <th>ID : </th>
            <td><%=id %></td>
        </tr>
        <tr>
            <th>PW : </th>
            <td><%=pw %></td>
        </tr>
        <tr>
            <th>Name : </th>
            <td><%=name %></td>
        </tr>
        <tr>
            <th>Year : </th>
            <td><%=year %></td>
        </tr>
        <tr>
            <th>Month : </th>
            <td><%=month %></td>
        </tr>
        <tr>
            <th>Day : </th>
            <td><%=day %></td>
        </tr>
        <tr>
            <th>Gender : </th>
            <td><%=gender %></td>
        </tr>
        <tr>
            <th>Email : </th>
            <td><%=email %></td>
        </tr>
        <tr>
            <th>Phone : </th>
            <td><%=phone %></td>
        </tr>
    </table>
</div>
</body>

</html>