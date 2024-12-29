<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %> 
<%@ page import = "java.io.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>關於我們</title>
    <style>
        @import url("css/nav.css");
        @import url("css/aboutus.css");
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
        <h1>網站開發理念</h1>
        <p>每個人的人生中總會或多或少留下大大小小的遺憾，我們網站的初衷就是希望減少大家的遺憾。
            所以我們提供了重生的服務，不論您的前半生經歷了多少失敗，都可以在我們的網站花錢購買，
            主動選擇下半輩子的身分，讓你贏在起跑點。如果重生的人物不夠滿意，您還能加購「金手指」，
            多花一些錢來提升您的各項能力，更加保證您重生後可以得到最完美的人生。準備好了嗎？
            歡迎成為我們網站的會員，選擇好您的角色，重新開啟一段新的贏家人生吧！</p>
    </section>
    <section>
        <h1>開發人員簡介</h1>
        <p>以下排名不分先後，僅採先顯示前端開發人員，後顯示後端開發人員。</p>
        <article class="across">
            <br>
            <img src="image/contect/chen.jpg" class="peo-pic1">
            <div class="peo-text1">
                陳家謙<br><br>
                資管二乙&nbsp;&nbsp;&nbsp;&nbsp;
                10944272<br><br>
                網站前端開發<br><br>
                「這學期我跟我同班負責前端開發，了解後端連接的困難我們儘量不會有複雜的設計，
                但能達到網頁設標準。希望大家合作愉快，順利完成任務!!!」
                <a href="https://www.facebook.com/trangia.khiem.94/"><img src="image/contect/fb.png" class="fb"></a>
                <a href="https://www.instagram.com/karich.gk/"><img src="image/contect/ig.png" class="ig"></a>
            </div>
        </article>
        <article class="straight">
            <img src="image/contect/lin.jpg" class="peo-pic2">
            <div class="peo-text2">
                林孟諠<br><br>
                資管二乙<br><br>
                10944229<br><br>
                網站前端開發<br><br>
                「這學期我做的是前端，相比起後端確實簡單多了，而且兩個學期的學習成果終於有串連的感覺，
                相信經過這兩個學期的學習我已經有能力可以開發簡易的網頁了。」
                <a href="https://www.facebook.com/profile.php?id=100000526219367"><img src="image/contect/fb.png"
                        class="fb"></a>
                <a href="https://www.instagram.com/avril0916/"><img src="image/contect/ig.png" class="ig"></a>
            </div>
        </article>
        <article class="across">
            <img src="image/contect/he.jpg" class="peo-pic1">
            <div class="peo-text1">
                何芳賢<br><br>
                資管二甲&nbsp;&nbsp;&nbsp;&nbsp;
                10844110<br><br>
                網站後端開發<br><br>
                「這學期甲班負責後端的部分，我覺得比起前端，後端對我而言比較難，
                透過這次學到很多，也是藉由上下學期的專題合作，讓我更能了解前後端的運行。」
                <a href="https://www.facebook.com/coco.chen.73157"><img src="image/contect/fb.png" class="fb"></a>
                <a href="https://www.instagram.com/hf_hyun.0802/"><img src="image/contect/ig.png" class="ig"></a>
            </div>
        </article>
        <article class="straight">
            <img src="image/contect/li.jpg" class="peo-pic2">
            <div class="peo-text2">
                李嘉欣<br><br>
                資管二甲<br><br>
                10944110<br><br>
                網站後端開發<br><br>
                「我認為後端部分還有許多需要學習的地方，以及前後端的整合，要花費大量的時間和心力，
                透過此次的課程專案，也使我更熟悉網站架設的過程！」<br>
                <a href="https://www.facebook.com/profile.php?id=100004392755259"><img src="image/contect/fb.png"
                        class="fb"></a>
                <a href="https://www.instagram.com/hy_beom02/"><img src="image/contect/ig.png" class="ig"></a>
            </div>
        </article>
    </section>
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
    <footer>
        Copyright © 2022 Relife. All rights reserved.
    </footer>
</body>

</html>