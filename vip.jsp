<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<%@include file="config.jsp" %> <%@ page import = "java.io.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>會員專區</title>
    <style>
        @import url("css/nav.css");
        @import url("css/vip.css");
        @import url("css/footer.css");
    </style>
</head>

<body>
<%
if(session.getAttribute("id") != null ){
%>
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
        <a href="#member">修改會員資料</a>
		<a href="addskill.jsp">會員超值加購</a>
        <a href="#change">轉生紀錄查詢</a>
    </aside>
	<%
	sql="SELECT * FROM members WHERE id='"+session.getAttribute("id")+"'";
	PreparedStatement pstmt = con.prepareStatement(sql);
	ResultSet rs=pstmt.executeQuery();
	while(rs.next())
	{
	%>
	<form action="update.jsp" method="POST">
    <section class="area" id="member">
        <h1>修改會員資料</h1>
        <form action="" method="get">
            <label class="chan-mem">帳號&nbsp;：</label>
            <input type="text" name="id" value="<%=rs.getString(2)%>" required><br><br>
            <label class="chan-mem">密碼&nbsp;：</label>
            <input type="text" name="pwd" value="<%=rs.getString(3)%>" required><br><br>
            <label class="chan-mem">姓名&nbsp;：</label>
            <input type="text" name="name" value="<%=rs.getString(4)%>" required><br><br>
            <label class="chan-mem">email：</label>
            <input type="text" name="mail" onKeyup="nocn()" onblur="nocn();" value="<%=rs.getString(5)%>" required><br><br>
			<div class="mm_but">
                        <input type="submit" value="確認修改資料" class="mm_but01" id="send">
                    </div>
        </form>
    </section>
	</form>
	<%}%>
	<%
	sql="SELECT * FROM `order` WHERE `memmail`='"+session.getAttribute("id")+"'";
	pstmt = con.prepareStatement(sql);
	rs=pstmt.executeQuery();
	while(rs.next())
	{
	%>	
    <section class="area" id="change">
        <h1>轉生紀錄查詢</h1>
        <h2>轉生日期：<%=rs.getString(13)%></h2>
        <h2>訂單編號：<td class="mem-2" style="width:200px;"><a href="order.jsp?Order=<%=rs.getString(1)%>" class="memorder">#<%=rs.getString(13)+rs.getString(1)+rs.getString(3)%></a></td>
								<input type="hidden" name="deleteorder" value="<%=rs.getString(1)%>"/>
								<input type="hidden" name="idnum" value="<%=rs.getString(3)%>"/>
								<input type="hidden" name="buy" value="<%=rs.getString(8)%>"/></h2>
		
        <h2>總金額：<%=rs.getString(12)%></h2>
    </section><%}%>
	<div align="center">
	<a href="logout.jsp" id="logout"><input type="submit" value="登出" id="send"></a>
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
	<footer>Copyright © 2022 Relife. All rights reserved.</footer>
	<%
}
else{
	con.close();//結束資料庫連結
%>
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
	<div>
	<section class="area" id="comment" align="center">
	<br><br><h1>《Relife&重生》</h1><br>
	<h1><font>您尚未登入會員，無法觀看會員專區，請先登入！</font></h1><br><br>
	<form action="checkmember.jsp" method="POST">
	<br><br><br><br><br><br><br><br><br><br><br><br>
	</form>
	</form>
	</section>
	</div>
    <footer>Copyright © 2022 Relife. All rights reserved.</footer>
<%
}
%>

</body>

</html>