<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %> 
<%@ page import = "java.io.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>China</title>
    <style>
        @import url("css/nav.css");
        @import url("css/country2.css");
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
    <% sql= "SELECT * FROM `good` WHERE `launch`='v' AND `country`='China'" ;
		ResultSet rs=con.createStatement().executeQuery(sql);
		int j=1;
	    while(rs.next()){
			if(j%3==1)
			{%>
	    <div class="col"><%}%>
        <p><%=rs.getString(2)%></p>
		<%if(j%3==0)
		{%></div><%}
	j++;}
	if(4<=j && j<=7)
		{%></div><%}
	if(1<=j && j<=3)
		{%></div><%}%>
		
	<% sql= "SELECT * FROM `good` WHERE `launch`='v' AND `country`='China'" ;
		ResultSet ws=con.createStatement().executeQuery(sql);
		int k=1;
	    while(ws.next()){
			if(k%3==1)
			{%><div ><%}%>
    <table align="center" class="person-table" id=<%=ws.getString(10)%>>
        <tr>
            <td>
                <div class="flip-container" ontouchstart="this.classList.toggle(`hover`);">
                    <div class="flipper">
                        <div class="front">
                            <img src=<%=ws.getString(8)%> class="pic">
                        </div>
                        <div class="back">
                            <br><br><br><br><br>
                            <%=ws.getString(6)%><br><br><br><br><br>
							庫存:<%=ws.getString(4)%>
							
                            <br><br><br><br><br><br><br><br>
                            <a href="person.jsp?p=<%=(ws.getString(1))%>">查看更多</a>
                        </div>
                    </div>
               </div>
            </td>
        </tr>
    </table>
	<%if(k%3==0)
		{%></div><%}
	k++;}
	if(4<=k && k<=7)
		{%></div><%}
	if(1<=k && k<=3)
		{%></div><%}%>
	
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
	
	