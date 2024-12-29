<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %> <%@ page import = "java.io.*"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>加購項目</title>
    <style>
      @import url("css/nav.css");
      @import url("css/buycar.css");
      @import url("css/footer.css");
	  @import url(netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css);
    </style>
  </head>

<body>
  <%
if(session.getAttribute("id") != null ){
   
%>
    <header>
      <a href="index.jsp"
        ><img src="image/logo/logo2.png" class="logo"
      /></a>
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
      <h1>加購項目</h1>
      <table>
        <tr>
          <th>項目</th>
          <th>金額</th>
		  <th>數量</th>
          <th>庫存剩餘</th>
        </tr>
		<% sql= "SELECT * FROM `skill` WHERE `price`='500'" ;
		ResultSet rs=con.createStatement().executeQuery(sql);
	    while(rs.next())
			{%><div>
		<%if(session.getAttribute("mail") != null)
  {%><form class="fform" action="addcart.jsp" method="post">
       <tr><td><%=rs.getString(2)%>+5</td>
	     <td> <input type="hidden" value="<%=rs.getString(2)%>" />
        <h1 class="price">$<%=rs.getString(3)%><input type="hidden" value="499" /></h1></td>
	  <td><h2><select name="mquan" size="1" class="select" ></h2>
          <option  value="1">1</option>
		  <option  value="2">2</option>
			<option  value="3">3</option>
			<option  value="4">4</option>
			<option  value="5">5</option>
			<option  value="6">6</option>
			<option  value="7">7</option>
			<option  value="8">8</option>
			<option  value="9">9</option>
			<option  value="10">10</option>
        </select></td>
		  <td><h2 name="quan"><%=rs.getString(4)%></td></h2>
		        <%out.print("<input type='hidden' name='idnum' value='"+rs.getString(1)+"';>");%>
                <%out.print("<input type='hidden' name='person' value='"+rs.getString(2)+"';>");%>
                <%out.print("<input type='hidden' name='price' value='"+rs.getString(3)+"';>");%>
                <%out.print("<input type='hidden' name='quan' value='"+rs.getString(4)+"';>");%>
                <%out.print("<input type='hidden' name='mquan' value='"+rs.getString(6)+"';>");%>
          
        <td><input type="submit" value="購買" name="sbtn" class="button" /></td></tr>
    </div></form>
		<%}
	else
  {%>
<form class="fform" action="addcart.jsp" method="post">
       <tr><td><%=rs.getString(2)%>+5</td>
	   <td> <input type="hidden" value="<%=rs.getString(2)%>" />
        <h1 class="price">$<%=rs.getString(3)%><input type="hidden" value="499" /></h1></td>
	  <td><h2><select name="mquan" size="1" class="select" ></h2>
          <option  value="1">1</option>
		  <option  value="2">2</option>
			<option  value="3">3</option>
			<option  value="4">4</option>
			<option  value="5">5</option>
			<option  value="6">6</option>
			<option  value="7">7</option>
			<option  value="8">8</option>
			<option  value="9">9</option>
			<option  value="10">10</option>
        </select></td>
		  <td><h2 name="quan"><%=rs.getString(4)%></td></h2>
		        <%out.print("<input type='hidden' name='idnum' value='"+rs.getString(1)+"';>");%>
                <%out.print("<input type='hidden' name='person' value='"+rs.getString(2)+"';>");%>
                <%out.print("<input type='hidden' name='price' value='"+rs.getString(3)+"';>");%>
                <%out.print("<input type='hidden' name='quan' value='"+rs.getString(4)+"';>");%>
                <%out.print("<input type='hidden' name='mquan' value='"+rs.getString(6)+"';>");%>
          
        
        <td><input type="submit" value="購買" name="sbtn" class="button" /></td></tr>
    </div></form><%}%><%}%>
      </table>
    </section>
<%

}
else{
	
%>
    <header>
      <a href="index.jsp"><img src="image/logo/logo2.png" class="logo"/></a>
      <nav>
        <a href="index2.jsp">首頁</a>&nbsp;&nbsp;
        <a href="contect.jsp">聯絡我們</a>&nbsp;&nbsp;
        <a href="aboutus.jsp">關於我們</a>&nbsp;&nbsp;
        <a href="buycar.jsp">購物車</a>&nbsp;&nbsp;
        <a href="vip.jsp">會員專區</a>&nbsp;&nbsp;
        <a href="login.jsp">登入</a>
      </nav>
    </header>
    <script type="text/javascript">
		function display_alert()
		{
			alert("需要登入會員方可加購技能，請先登入!!")
			}
		</script>
    <section>
      <h1>加購項目</h1>
      <table>
        <tr>
          <th>項目</th>
          <th>金額</th>
		  <th>數量</th>
          <th>庫存剩餘</th>
        </tr>
		<% sql= "SELECT * FROM `skill` WHERE `price`='500'" ;
		ResultSet rs=con.createStatement().executeQuery(sql);
	    while(rs.next())
			{%><div>
		<%if(session.getAttribute("mail") != null)
  {%><form class="fform" action="" method="post">
       <tr><td><%=rs.getString(2)%>+5</td>
	     <td> <input type="hidden" value="<%=rs.getString(2)%>" />
        <h1 class="price">$<%=rs.getString(3)%><input type="hidden" value="499" /></h1></td>
	  <td><h2><select name="mquan" size="1" class="select" ></h2>
          <option  value="1">1</option>
		  <option  value="2">2</option>
			<option  value="3">3</option>
			<option  value="4">4</option>
			<option  value="5">5</option>
			<option  value="6">6</option>
			<option  value="7">7</option>
			<option  value="8">8</option>
			<option  value="9">9</option>
			<option  value="10">10</option>
        </select></td>
		  <td><h2 name="quan"><%=rs.getString(4)%></td></h2>
		        <%out.print("<input type='hidden' name='idnum' value='"+rs.getString(1)+"';>");%>
                <%out.print("<input type='hidden' name='person' value='"+rs.getString(2)+"';>");%>
                <%out.print("<input type='hidden' name='price' value='"+rs.getString(3)+"';>");%>
                <%out.print("<input type='hidden' name='quan' value='"+rs.getString(4)+"';>");%>
                <%out.print("<input type='hidden' name='mquan' value='"+rs.getString(6)+"';>");%>
          
        <td><input type="submit" value="購買" name="sbtn" class="button" onclick="display_alert()"/></td></tr>
    </div></form>
		<%}
	else
  {%>
<form class="fform" action="" method="post">
       <tr><td><%=rs.getString(2)%>+5</td>
	   <td> <input type="hidden" value="<%=rs.getString(2)%>" />
        <h1 class="price">$<%=rs.getString(3)%><input type="hidden" value="499" /></h1></td>
	  <td><h2><select name="mquan" size="1" class="select" ></h2>
          <option  value="1">1</option>
		  <option  value="2">2</option>
			<option  value="3">3</option>
			<option  value="4">4</option>
			<option  value="5">5</option>
			<option  value="6">6</option>
			<option  value="7">7</option>
			<option  value="8">8</option>
			<option  value="9">9</option>
			<option  value="10">10</option>
        </select></td>
		  <td><h2 name="quan"><%=rs.getString(4)%></td></h2>
		        <%out.print("<input type='hidden' name='idnum' value='"+rs.getString(1)+"';>");%>
                <%out.print("<input type='hidden' name='person' value='"+rs.getString(2)+"';>");%>
                <%out.print("<input type='hidden' name='price' value='"+rs.getString(3)+"';>");%>
                <%out.print("<input type='hidden' name='quan' value='"+rs.getString(4)+"';>");%>
                <%out.print("<input type='hidden' name='mquan' value='"+rs.getString(6)+"';>");%>
          
        
        <td><input type="submit" value="購買" name="sbtn" class="button" onclick="display_alert()"/></td></tr>
    </div></form><%}%><%}%>
      </table>
    </section>
<%
con.close();//結束資料庫連結
}
%>
<footer id="footer">Copyright © 2022 Relife. All rights reserved.</footer>
  </body>
</html>

