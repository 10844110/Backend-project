<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<%@ page import = "java.io.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>搜尋結果</title>
    <style>
        @import url("css/nav.css");
        @import url("css/search.css");
        @import url("css/footer.css");
        
    </style>
</head>
<%
try {
//Step 1: 載入資料庫驅動程式 
    Class.forName("com.mysql.jdbc.Driver");
    try {
//Step 2: 建立連線 	
        String url="jdbc:mysql://localhost/?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
        String sql="";     
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
           out.println("連線建立失敗");
        else {
//Step 3: 選擇資料庫   
           sql="use item";
           con.createStatement().execute(sql);
           //從表格傳遞中文到資料庫, 必須使用getBytes("ISO-8859-1")編碼
          %>
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
	<% sql="use item";
              con.createStatement().execute(sql);
              request.setCharacterEncoding("utf-8");             
              sql="SELECT * FROM `good` WHERE  `person` LIKE '%"+request.getParameter("search")+"%'";
			  ResultSet rs=con.createStatement().executeQuery(sql);
		int j=1;
	    while(rs.next()){
			if(j%3==1)
			{%>
	    <div class="col"><%}%></div>
        <p><%=rs.getString(2)%></p>
		
   
         <div class="front">
                            <a href="person.jsp?p=<%=(rs.getString(1))%>" method="post"><img src=<%=rs.getString(8)%> class="pic"></a>
                        <%if(j%4==3){%></div><%}j++;}%>  
       						
                        
    <div>
        
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
    
</body>
<%

//Step 6: 關閉連線
           con.close();
//Step 5: 顯示結果 
          //直接顯示最新的資料
          }
		
  
    }
    catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());
    }
}

catch (ClassNotFoundException err) {
   out.println("class錯誤"+err.toString());
} %>
</html>