<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<%@include file="config.jsp" %> 
<%@ page import = "java.io.*"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>購物車</title>
    <style>
      @import url("css/nav.css");
      @import url("css/buycar.css");
      @import url("css/footer.css");
	  @import url("css/pay.css");
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
	<%sql="SELECT * FROM `buycar` WHERE `memmail`='" +session.getAttribute("id")+"'"; 
           ResultSet rs=con.createStatement().executeQuery(sql);
		   
		   rs=con.createStatement().executeQuery(sql);%>
	
	<section>
      <h1>商品：</h1>
      <br /><%
				int a=0;
				while(rs.next())
                {%>
      <!-- 可以的話可以放角色圖，不行的話放名字跟價格就好 -->
      
      <table>
	  <img src="image/goods/<%=rs.getString(2)%>.png" class="buy_per_img" />
	  <form name="form1" method="post" action="deletegood.jsp" >
        <tr>
          <th>角色名</th>
          <th>價&nbsp;&nbsp;&nbsp;&nbsp;格</th>
		  <th>數&nbsp;&nbsp;&nbsp;&nbsp;量</th>
		  <th>總&nbsp;&nbsp;&nbsp;&nbsp;計</th>
        </tr>
        <!-- 下面表格填角色名跟價格 -->
        <tr>
          <td><%=rs.getString(3)%></td>
          <td>$<span id=""><%=rs.getString(4)%></span></td>
		  <td><%=rs.getString(6)%></td>
           <td><span id="total">$
		   <%=Integer.parseInt(rs.getString(4))*Integer.parseInt(rs.getString(6))%>
					<input type="hidden" name="id" value="<%=a+=Integer.parseInt(rs.getString(4))*Integer.parseInt(rs.getString(6))%>">
						 </span>
						     
				<input type="hidden" name="ordernum" value="<%=(rs.getString(1))%>">
			</td>
            <td><input type="submit" class="send" value="刪除"></td>
				</form>
        </tr><%}%>
      </table>
    </section>
	
	<form action="recordIntoOrder.jsp" method="post">
    <section>
      <h1>填寫資料 :</h1>
      <br />
      
      <table>
        <tr>
          <td>
            收件人 : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" name="name" class="okok" required>
          </td>
        </tr>
        <tr>
          <td>
            收件人電話 : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="mobile" id="mobile" pattern="\d{10}" name="phone" class="okok" required>
          </td>
        </tr>
        <tr>
          <td>
            收件人地址 : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="address" class="okok" required>
          </td>
        </tr>
        <tr>
          <td>
            付款方式 : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
             貨到付款
              
          </td>
        </tr>
      </table>
      <br />
      <h1>訂單摘要 :</h1>
      <table>
        <tr>
          <td>
					
            商品總價 : 
			$<%=a%>
					<input type="hidden" name="mail" value=""><!-- 前一頁的總金額 -->
          </td>
        </tr>
        <tr>
          <td>
            運費總計 : <s>$40</s>&nbsp;&nbsp;$24<br>(母親節優惠4折!!)<!-- 你們可以自己設不同情境下的運費優惠-->
          </td>
        </tr>
      </table>
    </section>

    <section>
      <hr />
      <form action="" method="post">
        <h1 id="total">
          結帳總金額：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <!-- 金額填$後面 -->$<%=a+24%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		  <input type="submit" value="送出訂單" class="send">
        </h1>
      </form>
    </section></form>
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
	<h1><font>您尚未登入會員，無法加入購物車，請先登入！</font></h1><br><br>
	<form action="checkmember.jsp" method="POST">
	<br><br><br><br><br><br><br><br><br><br><br><br>
	</form>
	</form>
	</section>
	</div>
    <footer id="footer">Copyright © 2022 Relife. All rights reserved.</footer>
<%
}
%>
  </body>
</html>