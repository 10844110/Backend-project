<!-- Step 0: import library -->
<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*"%>
<html>
<head>
<title>add</title>
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
        else {
//Step 3: 選擇資料庫   
           sql="use item";
           con.createStatement().execute(sql);
		   request.setCharacterEncoding("UTF-8");  
           String new_GBname=request.getParameter("GBname");
           String new_GBstar=request.getParameter("GBstar");
		   String new_GBtext=request.getParameter("GBtext");
           java.sql.Date new_GBdate=new java.sql.Date(System.currentTimeMillis());
//Step 4: 執行 SQL 指令	
           sql="INSERT guestbook (`GBname`, `GBstar`, `GBtext`, `GBdatetime`) ";
           sql+="VALUES ('" + new_GBname + "', ";
           sql+="'"+new_GBstar+"', ";
           sql+="'"+new_GBtext+"', ";
           sql+="'"+new_GBdate+"')";      

           con.createStatement().execute(sql);
//Step 6: 關閉連線
           con.close();
//Step 5: 顯示結果 
          //直接顯示最新的資料
           response.sendRedirect("GBview.jsp?page=1");
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
