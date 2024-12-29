<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %> 
<%@ page import = "java.io.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>訂單管理</title>
    <style>
        @import url("css/nav.css");
        @import url("css/bossorder.css");
        @import url("css/footer.css");
    </style>
</head>
<body>
    <header>
        <img src="image/logo/logo2.png" class="logo"/>
        <nav class="back-nav">
            <a href="bossitem.jsp">產品管理</a>&nbsp;&nbsp;
            <a href="bossorder.jsp">訂單管理</a>&nbsp;&nbsp;
			<a href="bossmember.jsp">會員管理</a>&nbsp;&nbsp;
            <a href="index.jsp">登出</a>
        </nav>
    </header>
	<h1>訂單管理</h1>
	<%String O = request.getParameter("Order");
	sql="SELECT * FROM `order`";
	PreparedStatement pstmt = con.prepareStatement(sql);
	ResultSet rs=pstmt.executeQuery();
	while(rs.next())
	{
	%>
    <section>
        
        <img src="image/goods/<%=rs.getString(3)%>.png" class="person-pic">
        <article>
            <p>訂單編號：#<%=rs.getString(13)+rs.getString(1)+rs.getString(3)%></p>   <!-- 隨便寫的，你們在看用什麼邏輯寫 -->
            <p>收件人姓名：<%=rs.getString(9)%></p>
            <p>購買商品：<%=rs.getString(4)%></p>
            <p>售價：$<%=rs.getString(6)%></p>
            <p>數量：<%=rs.getString(8)%></p>
            <p>訂單總額(含運費)：$<%=(Integer.valueOf(rs.getString(6))*Integer.valueOf(rs.getString(8)))+24%></p>
        </article>
    </section><%}%>
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