<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %> <%@ page import = "java.io.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        @import url("css/nav.css");
        @import url("css/momad.css");
        @import url("css/footer.css");
    </style>
</head>
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
    <section>
        <img src="image/advertise/mother1.jpg" alt="">
        <br>
        5/6~5/10<br>
        母親節活動特惠中，現在註冊成為會員，立即享優惠。
    </section> 
    <section>
        <img src="image/advertise/mother2.jpg" alt="">
        <br>
        超過活動時間一切活動相關優惠作廢。<br>
        本商店保有最終解釋權，一切以本商店規劃為主。
    </section>
    <footer>
        Copyright © 2022 Relife. All rights reserved.
    </footer>
</body>
</html>