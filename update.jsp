<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%
if(session.getAttribute("id") != null ){
    if(request.getParameter("id")!=null){
	String id=request.getParameter("id");
	String pwd=request.getParameter("pwd");
	String name=request.getParameter("name");
	String mail=request.getParameter("mail");
	
    sql = "UPDATE `members` SET `id`='"+id+"' WHERE `id`='"+session.getAttribute("id")+"'";
	PreparedStatement change = con.prepareStatement(sql);
	change.execute();
	sql = "UPDATE `members` SET `pwd`='"+pwd+"' WHERE `id`='"+session.getAttribute("id")+"'";
	change = con.prepareStatement(sql);
	change.execute();
	sql = "UPDATE `members` SET `name`='"+name+"' WHERE `id`='"+session.getAttribute("id")+"'";
	change = con.prepareStatement(sql);
	change.execute();
	sql = "UPDATE `members` SET `mail`='"+mail+"' WHERE `id`='"+session.getAttribute("id")+"'";
	change = con.prepareStatement(sql);
	change.execute();	
	
	con.close();//結束資料庫連結
	out.print("更新成功!! 請<a href='vip.jsp'>按此</a>回會員頁面!!");
	}
	else{
	  con.close();//結束資料庫連結	
	  out.print("更新失敗!! 請填寫完整，<a href='vip.jsp'>按此</a>回會員頁面!!");
	}
}
else{
	con.close();//結束資料庫連結
%>
<h1><font color="red">您尚未登入，請登入！</font></h1>
<form action="check.jsp" method="POST">
帳號：<input type="text" name="id" /><br />
密碼：<input type="password" name="pwd" /><br />
<input type="submit" name="b1" value="登入" />
</form>
<%
}
%>