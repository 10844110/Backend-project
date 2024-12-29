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
    </header>
    <section class="area" id="member">
        <br><br><h1>使用者管理平台</h1><br><br>
        <form action="checkuser.jsp" method="GET">
            <label class="chan-mem">帳號&nbsp;：</label>
            <input type="text" name="userid"><br><br>
            <label class="chan-mem">密碼&nbsp;：</label>
            <input type="text" name="userpwd"><br><br>
            <input type="reset" value="重填" id="res">
            <input type="submit" value="傳送" id="send">
        </form>
    </section>
    <footer id="footer">
        Copyright © 2022 Relife. All rights reserved.<br>
    </footer>
</body>

</html>