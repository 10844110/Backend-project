<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>會員管理</title>
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
	<h1>會員管理</h1>
    <section>
        
		<%sql= "SELECT * FROM `members`" ;
	ResultSet tmp=con.createStatement().executeQuery(sql);
    //ResultSet tmp =pstmt.executeQuery(abc);%>
       
		
	<%while(tmp.next())
	  {%><form name="form1" method="post" action="deletemember.jsp" >
        <article>
		    <input type="submit" value="刪除會員" class="byby">
            <p name="num">會員編號：<%=tmp.getString(1)%></p>   
            <p>帳號：<%=tmp.getString(2)%></p>
            <p>密碼：<%=tmp.getString(3)%></p>
            <p>姓名：<%=tmp.getString(4)%></p>
            <p><input type="hidden" name="mail" value="<%=tmp.getString(5)%>">email：<%=tmp.getString(5)%></p>
            
        </article>
		</form><%}%>
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