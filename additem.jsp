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
        String url="jdbc:mysql://localhost/?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
        String sql="";
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
		{
           out.println("連線建立失敗");
		}   
        else {
//Step 3: 選擇資料庫   
           sql="USE `item`";
		   PreparedStatement pstmt = con.prepareStatement(sql);
		   pstmt.execute();
		   String num=request.getParameter("num");
           String person=request.getParameter("person");
		   String price=request.getParameter("price");
		   String quan=request.getParameter("quan");
           String launch=request.getParameter("launch");
		   
//Step 4: 執行 SQL 指令	
			sql = "UPDATE `good` SET `person`='"+person+"' WHERE `idnum`='"+num+"'";
			pstmt = con.prepareStatement(sql);
			pstmt.execute();
			sql = "UPDATE `good` SET `price`='"+price+"' WHERE `idnum`='"+num+"'";
			pstmt = con.prepareStatement(sql);
			pstmt.execute();
			sql = "UPDATE `good` SET `quan`='"+quan+"' WHERE `idnum`='"+num+"'";
			pstmt = con.prepareStatement(sql);
			pstmt.execute();
			sql = "UPDATE `good` SET `launch`='"+launch+"' WHERE `idnum`='"+num+"'";
			pstmt = con.prepareStatement(sql);
			pstmt.execute();
			
			con.close();//結束資料庫連結
			out.println("<script>self.location=document.referrer; alert('修改成功!!');</script>") ;
		   
		   
            
		   }
          }
	
    catch (SQLException sExec)
	{
           out.println("SQL錯誤"+sExec.toString());
    }
}

catch (ClassNotFoundException err) 
{
   out.println("class錯誤"+err.toString());
}
 		  
%>
</body>
</html>
