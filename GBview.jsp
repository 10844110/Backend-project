<!-- Step 0: import library -->
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>評論區</title>
</head>
<style>
    @import url("css/nav.css");
    @import url("css/GBview.css");
    @import url("css/footer.css");
</style>

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
    <aside>
        <a href="javascript:history.back(-1)">我要評論</a>
    </aside>
    <section class="area" id="member">
        <h1>會員留言</h1>
		
			<%
			try {
			//Step 1: 載入資料庫驅動程式 
				Class.forName("com.mysql.jdbc.Driver");
				try {
			//Step 2: 建立連線 	
					String url="jdbc:mysql://localhost/?serverTimezone=UTC";
					String sql="";
					Connection con=DriverManager.getConnection(url,"root","1234");
					if(con.isClosed())
					   out.println("連線建立失敗");
					else {
			//Step 3: 選擇資料庫   
					   sql="USE `item`";
					   con.createStatement().execute(sql);
			//Step 4: 執行 SQL 指令, 若要操作記錄集, 需使用executeQuery, 才能傳回ResultSet	
					   sql="SELECT * FROM `guestbook`"; //算出共幾筆留言
					   PreparedStatement pstmt = con.prepareStatement(sql,ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
					   //ResultSet.TYPE_SCROLL_INSENSITIVE表紀錄指標可前後移動，ResultSet.CONCUR_READ_ONLY表唯讀
					   ResultSet rs=pstmt.executeQuery();
					   //ResultSet rs=con.createStatement().executeQuery(sql);

					   //先移到檔尾, getRow()後, 就可知道共有幾筆記錄
					   rs.last();
					   int total_content=rs.getRow();
					   out.println("<h3>共有"+total_content+"筆會員留言</h3>");
					   
					   //每頁顯示5筆, 算出共幾頁
					   int page_num=(int)Math.ceil((double)total_content/5.0); //無條件進位
					   out.println("<h4>請選擇頁數");
					   //使用超連結方式, 呼叫自己, 使用get方式傳遞參數(變數名稱為page)
					   for(int i=1;i<=page_num;i++) //建立1,2,...頁超連結
						   out.print("<button><a href='GBview.jsp?page="+i+"'>"+i+"</a>&nbsp;</button></h4>"); //&nbsp;html的空白

					   out.println("<p>");

					   //讀取page變數
					   String page_string = request.getParameter("page");
					   if (page_string == null) 
						   page_string = "0";          
					   int current_page=Integer.valueOf(page_string);
					   if(current_page==0) //若未指定page, 令current_page為1
						  current_page=1;
					   //計算開始記錄位置   
			//Step 5: 顯示結果 
					   int start_record=(current_page-1)*5;
					   //遞減排序, 讓最新的資料排在最前面
					   sql="SELECT * FROM `guestbook` ORDER BY `GBid` DESC LIMIT ";
					   sql+=start_record+",5";

			// current_page... SELECT * FROM `guestbook` ORDER BY `GBid` DESC LIMIT
			//      current_page=1: SELECT * FROM `guestbook` ORDER BY `GBid` DESC LIMIT 0, 5
			//      current_page=2: SELECT * FROM `guestbook` ORDER BY `GBid` DESC LIMIT 5, 5
			//      current_page=3: SELECT * FROM `guestbook` ORDER BY `GBid` DESC LIMIT 10, 5
					   rs=con.createStatement().executeQuery(sql);
			//  逐筆顯示, 直到沒有資料(最多還是5筆)
					   while(rs.next())
							{
							 out.println("<table><tr><th>用戶姓名：</th><td>"+rs.getString(2)+"</td></tr>");
							 out.println("<tr><th>用戶評價：</th><td>"+rs.getString(3)+"星評價"+"</td</tr>");
							 out.println("<tr><th>留言內容：</th><td>"+rs.getString(4)+"</td></tr>");
							 out.println("<tr><th>留言時間：</th><td>"+rs.getString(5)+"</td></tr></table><hr>");
					  }
			//Step 6: 關閉連線
					  con.close();
				  }
				}
				catch (SQLException sExec) {
					   out.println("SQL錯誤"+sExec.toString());
					   
				}
			}
			catch (ClassNotFoundException err) {
				  out.println("class錯誤"+err.toString());
			}
			%>
        
    </section>

    <footer id="footer">
        Copyright © 2022 Relife. All rights reserved.<br>
		
    </footer>

</body>

</html>