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
        	margin: 0 auto;
            width: 1500px;
            height: 1500px;
            background-color: rgb(211, 208, 203);
            display: grid;
            justify-content: center;
            grid-template-columns: auto;
            grid-template-rows: 20% 60% 20%;
            grid-template-areas: 
            "header"
            "form"
            "footer"
            ;
        }
        header{
            margin-top: 50px;
            grid-area: header;
            justify-content: center;
        }
        form{
            margin-top: 50px;
            margin-left: 60px;
            grid-area: form;
            display: grid;
            gap: 20px;
            justify-content: center;
            width: 400px;
            height: 1200px;
        }
        footer{
            grid-area: footer;
            display: grid;
            gap: 20px;
            justify-content: center;
        }

        img{
            width: 250px;
            height: 50px;
        }
        a{
            display: flex;
            justify-content: center;
        }
        #input1{
            width: 400px;
            height: 40px;
        }
        #input2{
            width: 125px;
            height: 40px;
        }
        #input3{
            width: 270px;
            height: 40px;
        }
        #input4{
            width: 120px;
            height: 40px;
            color: white;
            background-color: rgb(62, 224, 56);
        }
        #input5{
            width: 400px;
            height: 40px;
            color: white;
            background-color: rgb(62, 224, 56);
        }
        .agree{
            display: flex;
            justify-content: center;
        }
        p{
            color: red;
            visibility: hidden;
        }
        h4{
        	text-align: center;
        }
    </style>
    <script type="text/javascript" src="_02_validation.js"></script>
    <title>join</title>
</head>

<body>
<div>
    <header>
        <a id="a" href="https://www.naver.com/"><img src="https://cdn.imweb.me/upload/S201812175c16eea88c6ac/5c1763d5acf88.png"></a>
    </header>
    <form method="get" id="form" action="_04_joinPro.jsp" >
        <section class="id">
            <h2>?????????</h2>
            <input type="text" name="id" id="input1">
            <p id="alert1">?????? ???????????????.</p>
        </section>

        <section class="pw1">
            <h2>????????????</h2>
            <input type="password" name="pw" id="input1">
            <p id="alert2">?????? ???????????????.</p>
        </section>

        <section class="pw2">
            <h2>???????????? ?????????</h2>
            <input type="password" name="pwCheck" id="input1">
            <p id="alert3">?????? ???????????????.</p>
        </section>

        <section class="name">
            <h2>??????</h2>
            <input type="text" name="name" id="input1">
            <p id="alert4">?????? ???????????????.</p>
        </section>

        <section class="day">
            <input type="number" name="year" placeholder="???(4???)" id="input2">
            <select name="month" id="input2">
                <option>???</option>
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
                <option>6</option>
                <option>7</option>
                <option>8</option>
                <option>9</option>
                <option>10</option>
                <option>11</option>
                <option>12</option>
            </select>
            <input type="number" name="day" placeholder="???" id="input2">
            <p id="alert5">????????? ?????? 4????????? ???????????? ???????????????.</p>
        </section>

        <section class="gender">
            <h2>??????</h2>
            <select id="input1" name="gender">
                <option>??????</option>
                <option>??????</option>
                <option>??????</option>
                <option>?????? ??????</option>
            </select>
            <p id="alert6">?????? ???????????????.</p>
        </section>

        <section class="email">
            <h2>?????? ?????? ?????????<h3>(??????)</h3></h2>
            <input type="email" id="input1" name="email">
        </section>

        <section class="phone">
            <h2>????????????</h2>
            <select id="input1">
                <option>???????????? +82</option>
                <option>?????? +233</option>
                <option>???????????? +31</option>
                <option>???????????? +64</option>
            </select>
            <input type="text" placeholder="???????????? ??????" id="input3" name="phone">
            <input type="button" name="phoneCheck" value="???????????? ??????" id="input4" onclick="phoneChecking()" >
            <input type="text" name="phoneText" id="input1" readonly>
            <p id="alert7">?????? ???????????????.</p><br>
            <p id="alert8">???????????? ????????? ???????????????.</p>
        </section>
            <input type="button" value="????????????" id="input5" onclick="Join()" >
    </form>
    <footer>
        <h4>???????????? | ???????????????????????? | ????????? ????????? ???????????? | ???????????? ????????????</h4>
        <h4>naver Copyright NAVER Corp. All Rights Reserved.</h4>
    </footer>
</div>
</body>

</html>