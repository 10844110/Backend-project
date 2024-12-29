<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %> 
<%@ page import = "java.io.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>聯絡我們</title>
    <style>
        @import url("css/contect.css");
        @import url("css/nav.css");
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
    <div class="index-contrac">
        <fieldset class="contrac-index">
            <legend class="contrac-text">與我們聯絡</legend>
            <p>若您在使用時有遇到任何困難，皆可以透過此頁面與我們聯絡，
                請留下聯絡方式讓我們能夠找到您，也請詳述您遇到的問題，
                以利我們了解情況好為您解決，收到您的來信後，我們會盡快回復，
                協助您解決問題。</p>
            <form action="mailto:giakhiemt1@gmail.com?subject=我所遇到問題" method="POST" enctype="text/plain">
                <label class="contrac-input">姓名 &nbsp;:</label>
                <input type="text" name="name_sent" value=""><br>
                <label class="contrac-input">電話 &nbsp;:</label>
                <input type="text" name="phone_sent" value=""><br>
                <label class="contrac-input">email :</label>
                <input type="text" name="email_sent" value=""><br>
                <label class="contrac-input">內容 &nbsp;:</label><br>
                <textarea name="text_sent" cols="70" rows="10" wrap="hard" value=""></textarea><br>
                <input type="reset" value="重填" id="res">
                <input type="submit"  value="傳送" id="send">
            </form>
        </fieldset>
    </div>
    <div>
        <img src="image/logo/top.png" class="bt_top" id="myBtn" title="go top"/>
        <script>
            window.onscroll = function() {scrollFunction()};
            function scrollFunction() {
            
            if (document.body.scrollTop > 600 || document.documentElement.scrollTop > 600) {
            document.getElementById("myBtn").style.display = "block";
            } else {
            document.getElementById("myBtn").style.display = "none";
            }
            }
            
            document.getElementById('myBtn').addEventListener("click", function(){
            document.body.scrollTop = 0;
            document.documentElement.scrollTop = 0;
            });
        </script>
    </div>
    <footer class="footer">
        Copyright © 2022 Relife. All rights reserved.
    </footer>
</body>

</html>