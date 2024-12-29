<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %> <%@ page import = "java.io.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Relife 首頁</title>
    <style>
        @import url("css/nav.css");
        @import url("css/index2.css");
        @import url("css/footer.css");
    </style>
</head>
<body>
    <header>
        <iframe id="background_audio_menu" src="audio/background_audio_index2.mp3" frameborder="0"
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
            allowfullscreen></iframe>
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
    <div class="ad">
        <img name="advertise" src="image/advertise/ad1.jpg" class="ad_img">
        <script>
            window.onload = function(){
              setTimeout("switchImage()", 4000);
            }
            var current = 1;
            var numIMG = 4;
            function switchImage(){
              current++;
              // 取代照片
              document.images['advertise'].src ='image/advertise/ad' + current + '.jpg';
              // 條件
              if(current == numIMG){current =0;}
                setTimeout("switchImage()", 4000);
              }
            
        </script>
    </div>
    <div class="marquee">
        <div class="text">
            <>
                <>
                    <>用戶：下輩子賺大錢 已成功透過本網站轉生成中世紀國王<>
                            <>
                                <>
        </div>
    </div>
    <table align="center" id="map">
        <tr>
            <td>
                <img src="image/logo/earth-web.jpg" id="world_map">
                <a href="country3.jsp">
                    <h3 id="ame">America</h3>
                </a>
                <a href="country1.jsp">
                    <h3 id="eur">Europe</h3>
                </a>
                <a href="country2.jsp">
                    <h3 id="chi">China</h3>
                </a>
            </td>
        </tr>
    </table>
	<%
    Integer Count = (Integer)application.getAttribute("Counter");
    if( Count ==null || Count == 0 ){
       Count = 1;
    }else{
       Count += 1;
    }
    application.setAttribute("Counter", Count);
%>
    <div class="div-jisuan">
        <section>
            <label>〈Relife&重生〉 瀏覽人數 : <%= Count%></label>
            
            <form action="search.jsp" method="POST" class="form">
                <label for="">搜尋 :</label>
            <input class="jisuan" placeholder="..." name="search"></input>
            <input type="submit" value="查詢" class="send">
            </form>
        </section>
    </div>
    <div class="marquee">
        <div class="text">
            <>
                <>
                    <> 關於最新的訊息想通知給您!!! <>
                            <>
                                <>
        </div>
    </div>
	
	<%         
    sql="SELECT * FROM `good` ORDER BY `news` DESC LIMIT 1";
    ResultSet rs=con.createStatement().executeQuery(sql); 
    while(rs.next()){
	%>
	
    <div id="run">
        <ol class="news_text">
		    <a href="aboutus.jsp">
                <li><strong>[ 5/1 ]</strong> Relife&重生 正式開始營業!!</li>
            </a>
            <a href="country1.jsp">
                <li><strong class="area_text">[ Europe ]</strong> 剛建立新人物 , 歡迎歡迎!</li>
            </a>
            <a href="country2.jsp">
                <li><strong class="area_text">[ China ]</strong> 剛建立新人物 , 歡迎觀看!</li>
            </a>
            <a href="country3.jsp">
                <li><strong class="area_text">[ American ]</strong> 剛建立新人物 , 歡迎觀看!</li>
            </a>
            <a href="momad.jsp">
                <li><strong>[ 5/6 ]</strong> 歡慶母親節 , 運費降價 , 4折起!!</li>
            </a>
            <a href="person.jsp?p=<%=rs.getString(1)%>">
                <li><strong>[ 5/9 ]</strong> 剛建立新人物 , 歡迎觀看!</li>
            </a>
        </ol>
    </div><%}%>
	<legend class="contrac-text">最新人物</legend>
	<div class="index-contrac">
        
        <div class="container_intro">
            <div class="intro">
	<%         
    sql="SELECT * FROM `good` ORDER BY `new person` DESC LIMIT 5";
    ResultSet ws=con.createStatement().executeQuery(sql); 
    while(ws.next()){
	%>
    
                <a href="person.jsp?p=<%=ws.getString(1)%>"><img src="<%=ws.getString(8)%>" alt="Hình Ảnh Minh Họa 1" class="img_new">
				</a><%}%>
                <!--Thêm Tiêu Đề Cho Hình Ảnh-->
            </div>
        </div>
    </div>
	
	
	
	<legend class="contrac-text">熱銷榜</legend>
    <div class="index-contrac">
        
        <div class="col">
		<%         
    sql="SELECT * FROM `good` ORDER BY `ranked` DESC LIMIT 3";
    ResultSet cs=con.createStatement().executeQuery(sql); 
    while(cs.next()){
	%>
            <div class="number"></div>
            <a href="person.jsp?p=<%=cs.getString(1)%>"><img src="<%=cs.getString(8)%>" alt="Hình Ảnh Minh Họa 1" class="img_new">
			</a><%}%>
            
        </div>
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
    <footer>
        Copyright © 2022 Relife. All rights reserved.
    </footer>
</body>

</html>