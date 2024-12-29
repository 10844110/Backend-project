<!-- Step 0: import library -->
<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>create table</title>
</head>
<body>
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
         else
           {
//Step 3: 選擇資料庫           
            sql="USE `item`";
            con.createStatement().execute(sql);
			String id=request.getParameter("id");
			String pwd=request.getParameter("pwd");
			String name=request.getParameter("name");
			String mail=request.getParameter("mail");
//Step 4: 執行 SQL 指令	  
            sql="CREATE TABLE `members`";      
            sql="INSERT members (`id`, `pwd`, `name`, `mail`) ";
            sql+="VALUES ('" + id + "', ";
            sql+="'"+pwd+"',"; 
		    sql+="'"+name+"',";
		    sql+="'"+mail+"')";
            con.createStatement().execute(sql);
//Step 5: 關閉連線
            con.close();
//Step 6: 顯示結果           
            response.sendRedirect("login.jsp");
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
</body>
</html>
	