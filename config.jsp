<%
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost/?serverTimezone=UTC&characterEncoding=utf-8";
Connection con=DriverManager.getConnection(url,"root","1234");
String sql="USE `item`";
con.createStatement().execute(sql);
%>