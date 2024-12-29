<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %> 
<%@ page import = "java.io.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>產品管理</title>
    <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
    <script>
    	$(function(){
    		$(".checkbox_add").change(function(){
    			if ($(this).prop("checked"))
    			{
    				$(this).val("v");
    			}
    			else 
    			{
    				$(this).val("x");	
    			}
    		})
    	})
    </script>
    <style>
        @import url("css/nav.css");
        @import url("css/bossitem.css");
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
          <a href="userlogin.jsp">登出</a>
        </nav>
    </header>
<div>
    <section>
	<%sql= "SELECT * FROM `good`" ;
	ResultSet tmp=con.createStatement().executeQuery(sql);
	%>

				<table align="center">
                <tr id="title">
                    <th>人物圖片</th>
                    <th>商品編號</th>
					<th>增/刪</th>
                    <th>商品名稱</th>
					<th>商品售價</th>
                    <th>商品庫存</th>
                    <th></th>
                </tr>
<%while(tmp.next())
{%>
				<form name="form1" method="post" action="additem.jsp" >
				<tr>
                    <td><img src="<%=tmp.getString(8)%>" height="50px" length="50px"></td>
                    <td><input type="text"  name="num" value="<%=tmp.getString(1)%>"></td>
                    <td>
							<%if (tmp.getString(27).equals("v")){%>
								<input type="checkbox"  class="c01 uu-2 checkbox_add" name="launch" value="v" checked="true" height="50px" length="50px">
							<%}
							else{%>
								<input type="checkbox"  class="c01 uu-2 checkbox_add" name="launch" value="x" height="50px" length="50px">
							<%}%>
					</td>
                    <td><input type="text" name="person" value="<%=tmp.getString(2)%>"></td>
                    <td><input type="text" name="price" value="<%=tmp.getString(3)%>"></td>
                    <td><input type="text" name="quan" value="<%=tmp.getString(4)%>"></td>
                    
                    <td><input type="submit"  value="修改" class="button"></td>
                </tr>
				</form>
				<%}%>
                </table>
    </section>
</div>
    <footer id="footer">
        Copyright © 2022 Relife. All rights reserved.
    </footer>
</body>
</html>