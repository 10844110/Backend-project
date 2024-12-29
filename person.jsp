<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" pageEncoding="UTF-8"%>
 <%@ page import = "java.io.*"%><%@include file="config.jsp" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>商品</title>
    <style>
      @import url("css/person.css");
      @import url("css/nav.css");
      @import url("css/footer.css");
      @import url("css/king1.css");
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
	
	<!-- 內容 -------------------------------------------->
  <%
  String p = request.getParameter("p");
	sql="SELECT * FROM good WHERE `idnum`='"+p+"'";
	ResultSet rs=con.createStatement().executeQuery(sql);
	while(rs.next())
  {
  %><div>
    <div class="col">
      <img src=<%=rs.getString(8)%> class="pic" />
      <div class="next"></div>
      <h1 class="name">~<%=rs.getString(2)%>~</h1>
      <p class="sen"><%=rs.getString(6)%></p>
      <div class="skill" id="skill">
        <ul>
          <li>
            <div class="skillname"><%=rs.getString(12)%></div>
            <div class="loading">
              <div id="sk1">&nbsp;&nbsp;<%=rs.getString(13)%></div>
            </div>
          </li>
          <li>
            <div class="skillname"><%=rs.getString(14)%></div>
            <div class="loading">
              <div id="sk2">&nbsp;&nbsp;<%=rs.getString(15)%></div>
            </div>
          </li>
          <li>
            <div class="skillname"><%=rs.getString(16)%></div>
            <div class="loading">
              <div id="sk3">&nbsp;&nbsp;<%=rs.getString(17)%></div>
            </div>
          </li>
          <li>
            <div class="skillname"><%=rs.getString(18)%></div>
            <div class="loading">
              <div id="sk4">&nbsp;&nbsp;<%=rs.getString(19)%></div>
            </div>
          </li>
          <li>
            <div class="skillname"><%=rs.getString(20)%></div>
            <div class="loading">
              <div id="sk5">&nbsp;&nbsp;<%=rs.getString(21)%></div>
            </div>
          </li>
        </ul>
		
      </div>
	  
	  <form class="fform" action="addcart.jsp" method="post">
      <div class="next2"></div>
      <br /><br /><br /><br />
      <h2>角色故事</h2>
      <p class="story">
        <%=rs.getString(7)%>
      </p>
	  
	  <td><h2>數量：<select name="mquan" size="1" class="select" ></h2>
          <option  value="1">1</option>
        </select></td>
		  <td><h2 name="quan">庫存剩餘：<%=rs.getString(4)%></td></h2>
		        <%out.print("<input type='hidden' name='idnum' value='"+rs.getString(1)+"';>");%>
                <%out.print("<input type='hidden' name='person' value='"+rs.getString(2)+"';>");%>
                <%out.print("<input type='hidden' name='price' value='"+rs.getString(3)+"';>");%>
                <%out.print("<input type='hidden' name='quan' value='"+rs.getString(4)+"';>");%>
                <%out.print("<input type='hidden' name='mquan' value='"+rs.getString(23)+"';>");%>
          
        <input type="hidden" value="<%=rs.getString(2)%>" />
        <h2 class="price">價格：$<%=rs.getString(3)%><input type="hidden" value="499" /></h2>
        <input type="submit" value="購買" name="sbtn" class="button" /></a>
      
    </div></form><%}%>
	
	
	<!-- 購買評論 ----------------------------------------->
    <section>
      <h2>使用體驗</h2>
      <form action="GBadd.jsp" method="post">
        <table border="1">
          <tr>
            <th>用戶</th>
            <td><input type="text" name="GBname"></td>
          </tr>
          <tr>
            <th>留言</th>
            <td>
              <textarea rows="4" cols="50" name="GBtext"></textarea>
            </td>
          </tr>
		  
          <tr>
            <th>評價</th>
            <td>
              <div id="rating" name="ctm_score">
			  
			  
                <input type="radio" id="star5" name="GBstar" value="5" />
                <label class="full" for="star5" title="非常滿意 5 星星"></label>

                <input type="radio" id="star4" name="GBstar" value="4" />
                <label class="full" for="star4" title="滿意 4 星星"></label>
               
                <input type="radio" id="star3" name="GBstar" value="3" />
                <label class="full" for="star3" title="覺得還行 3星星"></label>

              
                <input type="radio" id="star2" name="GBstar" value="2" />
                <label class="full" for="star2" title="要價強 2 星星"></label>
				
                <input type="radio" id="star1" name="GBstar" value="1" />
                <label class="full" for="star1" title="不滿意 1 星星"></label>
                <script>
                  function calcRate(r) {
                    const f = ~~r, //Tương tự Math.floor(r)
                      id = "star" + f + (r % f ? "half" : "");
                    id && (document.getElementById(id).checked = !0);
                  }
                </script>
              </div>
            </td>
          </tr>
        </table>
		<a href="GBview.jsp?page=1" style="color:white;" class="btn">查看買家留言</a><p>
        <input type="submit" value="傳送" class="action_btn" />
        <input type="reset" value="刪除" class="action_btn" />
      </form>
    </section>
    <div>
      <img
        src="image/logo/top.png"
        class="bt_top"
        id="myBtn"
        title="go top"
      />
      <script>
        window.onscroll = function () {
          scrollFunction();
        };
        function scrollFunction() {
          if (
            document.body.scrollTop > 600 ||
            document.documentElement.scrollTop > 600
          ) {
            document.getElementById("myBtn").style.display = "block";
          } else {
            document.getElementById("myBtn").style.display = "none";
          }
        }

        document.getElementById("myBtn").addEventListener("click", function () {
          document.body.scrollTop = 0;
          document.documentElement.scrollTop = 0;
        });
      </script>
    </div>
<%

}
else{
	
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
	
	<!-- 內容 -------------------------------------------->
  <%
  String p = request.getParameter("p");
	sql="SELECT * FROM good WHERE `idnum`='"+p+"'";
	ResultSet rs=con.createStatement().executeQuery(sql);
	while(rs.next())
  {
  %><div>
    <div class="col">
      <img src=<%=rs.getString(8)%> class="pic" />
      <div class="next"></div>
      <h1 class="name">~<%=rs.getString(2)%>~</h1>
      <p class="sen"><%=rs.getString(6)%></p>
      <div class="skill" id="skill">
        <ul>
          <li>
            <div class="skillname"><%=rs.getString(12)%></div>
            <div class="loading">
              <div id="sk1">&nbsp;&nbsp;<%=rs.getString(13)%></div>
            </div>
          </li>
          <li>
            <div class="skillname"><%=rs.getString(14)%></div>
            <div class="loading">
              <div id="sk2">&nbsp;&nbsp;<%=rs.getString(15)%></div>
            </div>
          </li>
          <li>
            <div class="skillname"><%=rs.getString(16)%></div>
            <div class="loading">
              <div id="sk3">&nbsp;&nbsp;<%=rs.getString(17)%></div>
            </div>
          </li>
          <li>
            <div class="skillname"><%=rs.getString(18)%></div>
            <div class="loading">
              <div id="sk4">&nbsp;&nbsp;<%=rs.getString(19)%></div>
            </div>
          </li>
          <li>
            <div class="skillname"><%=rs.getString(20)%></div>
            <div class="loading">
              <div id="sk5">&nbsp;&nbsp;<%=rs.getString(21)%></div>
            </div>
          </li>
        </ul>
		
      </div>
	  <%if(session.getAttribute("id") != null)
  {%>
	  <form class="fform" action="addcart.jsp" method="post">
      <div class="next2"></div>
      <br /><br /><br /><br />
      <h2>角色故事</h2>
      <p class="story">
        <%=rs.getString(7)%>
      </p>
	  
	  <td><h2>數量:<select name="mquan" size="1" class="select" ></h2>
          <option  value="1">1</option>
        </select></td>
		  <td><h2 name="quan">庫存剩餘:<%=rs.getString(4)%></td></h2>
		        <%out.print("<input type='hidden' name='idnum' value='"+rs.getString(1)+"';>");%>
                <%out.print("<input type='hidden' name='person' value='"+rs.getString(2)+"';>");%>
                <%out.print("<input type='hidden' name='price' value='"+rs.getString(3)+"';>");%>
                <%out.print("<input type='hidden' name='quan' value='"+rs.getString(4)+"';>");%>
                <%out.print("<input type='hidden' name='mquan' value='"+rs.getString(23)+"';>");%>
          
        <input type="hidden" value="<%=rs.getString(2)%>" />
        <h1 class="price">價格:$<%=rs.getString(3)%><input type="hidden" value="499" /></h1>
        <input type="submit" value="購買" name="sbtn" class="button" /></a>
		<script type="text/javascript">
		function display_alert1()
		{
			alert("需要登入會員方可購買，請先登入!!")
			}
		</script>
      
    </div></form><%}
	else
  {%>
      <form class="fform" action="" method="post">
      <div class="next2"></div>
      <br /><br /><br /><br />
      <h2>角色故事</h2>
      <p class="story">
        <%=rs.getString(7)%>
      </p>
	  
	  <td><h2>數量:<select name="mquan" size="1" class="select" ></h2>
          <option  value="1">1</option>
        </select></td>
		  <td><h2 name="quan">庫存剩餘:<%=rs.getString(4)%></td></h2>
		        <%out.print("<input type='hidden' name='idnum' value='"+rs.getString(1)+"';>");%>
                <%out.print("<input type='hidden' name='person' value='"+rs.getString(2)+"';>");%>
                <%out.print("<input type='hidden' name='price' value='"+rs.getString(3)+"';>");%>
                <%out.print("<input type='hidden' name='quan' value='"+rs.getString(4)+"';>");%>
                <%out.print("<input type='hidden' name='mquan' value='"+rs.getString(23)+"';>");%>
          
        <input type="hidden" value="<%=rs.getString(2)%>" />
        <h2 class="price">價格:$<%=rs.getString(3)%><input type="hidden" value="499" /></h2>
        <input type="submit" value="購買" name="sbtn" class="button" onclick="display_alert1()"/></a>
		<script type="text/javascript">
		function display_alert1()
		{
			alert("需要登入會員方可購買，請先登入!!")
			}
		</script>
      
    </div></form><%}%><%}%>
	
	
	<!-- 購買評論 ----------------------------------------->
    <section>
      <h2>使用體驗</h2>
      <form action="" method="post">
        <table border="1">
          <tr>
            <th>用戶</th>
            <td><input type="text" name="GBname"></td>
          </tr>
          <tr>
            <th>留言</th>
            <td>
              <textarea rows="4" cols="50" name="GBtext"></textarea>
            </td>
          </tr>
		  
          <tr>
            <th>評價</th>
            <td>
              <div id="rating" name="ctm_score">
			  
			  
                <input type="radio" id="star5" name="GBstar" value="5" />
                <label class="full" for="star5" title="非常滿意 5 星星"></label>

                <input type="radio" id="star4" name="GBstar" value="4" />
                <label class="full" for="star4" title="滿意 4 星星"></label>
               
                <input type="radio" id="star3" name="GBstar" value="3" />
                <label class="full" for="star3" title="覺得還行 3星星"></label>

              
                <input type="radio" id="star2" name="GBstar" value="2" />
                <label class="full" for="star2" title="要價強 2 星星"></label>
				
                <input type="radio" id="star1" name="GBstar" value="1" />
                <label class="full" for="star1" title="不滿意 1 星星"></label>
                <script>
                  function calcRate(r) {
                    const f = ~~r, //Tương tự Math.floor(r)
                      id = "star" + f + (r % f ? "half" : "");
                    id && (document.getElementById(id).checked = !0);
                  }
                </script>
              </div>
            </td>
          </tr>
        </table>
		<a href="GBview.jsp?page=1" class="btn">查看買家留言</a><p>
        <input type="submit" value="傳送" class="action_btn" onclick="display_alert()">
		<script type="text/javascript">
		function display_alert()
		{
			alert("需要登入會員方可評論，請先登入!!")
			}
		</script>
        <input type="reset" value="刪除" class="action_btn" />
      </form>
    </section>
    <div>
      <img
        src="image/logo/top.png"
        class="bt_top"
        id="myBtn"
        title="go top"
      />
      <script>
        window.onscroll = function () {
          scrollFunction();
        };
        function scrollFunction() {
          if (
            document.body.scrollTop > 600 ||
            document.documentElement.scrollTop > 600
          ) {
            document.getElementById("myBtn").style.display = "block";
          } else {
            document.getElementById("myBtn").style.display = "none";
          }
        }

        document.getElementById("myBtn").addEventListener("click", function () {
          document.body.scrollTop = 0;
          document.documentElement.scrollTop = 0;
        });
      </script>
    </div>
<%
con.close();//結束資料庫連結
}
%>
    <footer>Copyright © 2022 Relife. All rights reserved.</footer>
  </body>
</html>
