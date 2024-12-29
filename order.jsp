<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<%@include file="config.jsp" %> 
<%@ page import = "java.io.*"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>訂單明細</title>
    <style>
      @import url("css/nav.css");
      @import url("css/bossorder.css");
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
	<%
	String O = request.getParameter("Order");
	sql="SELECT * FROM `order` WHERE `Order`='"+O+"'";
	PreparedStatement pstmt = con.prepareStatement(sql);
	ResultSet rs=pstmt.executeQuery();
	while(rs.next())
	{
	%>  
	<section>
	<h2 style="color: #FFFFDF;text-align:center;font-size:40px">訂單編號:#<%=rs.getString(13)+rs.getString(1)+rs.getString(3)%></h2>
        <h1>收件人資料</h1>
        <article>
            <p>收件人姓名：<%=rs.getString(9)%></p>
            <p>收件人電話 :<%=rs.getString(10)%></p>
            <p>收件人地址 :<%=rs.getString(11)%></p>
            <p>付款方式 :貨到付款</p>
        </article>
    </section>
	<section>
        <h1>訂單資料</h1>
		<img src="image/goods/<%=rs.getString(3)%>.png" class="person-pic">
        <article>
		
            <p>購買商品：<%=rs.getString(4)%></p>
            <p>售價：$<%=rs.getString(6)%></p>
            <p>數量：<%=rs.getString(8)%></p>
			<p>商品總價：$<%=Integer.valueOf(rs.getString(6))*Integer.valueOf(rs.getString(8))%></p>
            <p>訂單總額(含運費)：$<%=(Integer.valueOf(rs.getString(6))*Integer.valueOf(rs.getString(8)))+24%></p>
        </article>
    </section>
	<%}%>
	

	
  </body>
</html>