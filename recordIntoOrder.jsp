<%@page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*, java.util.*"%>


<!DOCTYPE html>
<html lang="en">
	<head>
		<title>recordOrder</title>
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
           out.println("連線建立失敗");
        else {
//Step 3: 選擇資料庫   
           sql="use item";
           con.createStatement().execute(sql);
           //從表格傳遞中文到資料庫, 必須使用getBytes("ISO-8859-1")編碼
 
		   
		sql = "SELECT * FROM `buycar` WHERE `memmail`='" +session.getAttribute("id")+"'"; 
		ResultSet tmp =con.createStatement().executeQuery(sql);
           				
		while(tmp.next())
		{
			String sendname=request.getParameter("name");
	        String address=request.getParameter("address");
	        String phone=request.getParameter("phone");
			//String sendname=new String(request.getParameter("sendname").getBytes("ISO-8859-1"),"UTF-8");
			//String address=new String(request.getParameter("address").getBytes("ISO-8859-1"),"UTF-8");
			java.sql.Date orderdate=new java.sql.Date(System.currentTimeMillis());

			String ordernum = tmp.getString(1);
	        String idnum = tmp.getString(2);
	        String person = tmp.getString(3);
	        String price = tmp.getString(4);
			String quan = tmp.getString(5);
	        String buy = tmp.getString(6);
	        String memmail = tmp.getString(7);

            sql = "INSERT into `order`(`ordernum`,`idnum`,`person`,`memmail`,`price`,`quan`,`buy`,`sendname`,`address`,`phone`,`orderdate`)";
            sql+="VALUES ('"+ordernum+"', "; 
			sql+="'" +idnum+ "', ";			
            sql+="'" +person+ "', ";
            sql+="'"+memmail+"', ";
            sql+="'"+price+"', ";
            sql+="'"+quan+"', ";
            sql+="'"+buy+"', ";//買的數量
            sql+="'"+sendname+"', ";  
            sql+="'"+address+ "', "; 
            sql+="'"+phone+"', "; 
			sql+="'"+orderdate+"') "; 
                            
            con.createStatement().execute(sql);
								
			int inv = Integer.valueOf(quan) - Integer.valueOf(buy);
			sql = " UPDATE `good` SET `quan` = '"+inv+"' WHERE `idnum` = '"+idnum+"'";
			con.createStatement().executeUpdate(sql);
			
			sql = " UPDATE `good` SET `salenum`= '"+buy+"' WHERE `idnum` = '"+idnum+"'";
			con.createStatement().executeUpdate(sql);
			
			int inv2 = Integer.valueOf(quan) - Integer.valueOf(buy);
			sql = " UPDATE `skill` SET `quan` = '"+inv2+"' WHERE `idnum` = '"+idnum+"'";
			con.createStatement().executeUpdate(sql);
			
			sql = " UPDATE `skill` SET `salenum`= '"+buy+"' WHERE `idnum` = '"+idnum+"'";
			con.createStatement().executeUpdate(sql);
			
			int totalprice = ((Integer.valueOf(price)*Integer.valueOf(buy))+24);
			sql = " UPDATE `order` SET `totalprice` = '"+totalprice+"' WHERE `memmail` = '"+memmail+"' AND `ordernum`='"+ordernum+"'";
			con.createStatement().executeUpdate(sql);
			
			
			sql = "DELETE FROM `buycar` WHERE `memmail` = '"+memmail+"'";
			con.createStatement().executeUpdate(sql);
			response.sendRedirect("vip.jsp") ;
        }
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
}                         

				

		%>
  </body>
</html>