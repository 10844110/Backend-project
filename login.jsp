<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %> <%@ page import = "java.io.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>登入、註冊</title>
</head>
<style>
    @import url("css/nav.css");
    @import url("css/login.css");
    @import url("css/footer.css");
</style>

<body>
    <header>
        <a href="index.jsp"><img src="image/logo/logo2.png" class="logo"></a>
        <nav>
            <a href="index2.jsp">首頁</a>&nbsp;&nbsp;
            <a href="contect.jsp">聯絡我們</a>&nbsp;&nbsp;
            <a href="aboutus.jsp">關於我們</a>&nbsp;&nbsp;
            <a href="buycar.jsp">購物車</a>&nbsp;&nbsp;
            <a href="vip.jsp">會員專區</a>&nbsp;&nbsp;
            <a href="login.jsp">登入</a>
        </nav>
    </header>
    <aside>
        <a href="login.jsp">會員登入</a>
        <a href="register.jsp">會員註冊</a>
    </aside>
    <section class="area" id="member">
        <h1>會員登入</h1>
        <form action="checkmember.jsp" method="GET">
            <label class="chan-mem">帳號&nbsp;：</label>
            <input type="text" name="id"><br><br>
            <label class="chan-mem">密碼&nbsp;：</label>
            <input type="text" name="pwd"><br><br>
            <input type="reset" value="重填" id="res">
            <input type="submit" value="傳送" id="send">
        </form>
    </section>

    <footer id="footer">
        Copyright © 2022 Relife. All rights reserved.<br>
		
    </footer>

</body>

</html>