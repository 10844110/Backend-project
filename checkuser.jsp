<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%
if(request.getParameter("userid") !=null && !request.getParameter("userid").equals("") 
	&& request.getParameter("userpwd") != null && !request.getParameter("userid").equals("")){
    sql = "SELECT * FROM `user` WHERE `userid`='" +request.getParameter("userid") + 
	      "'  AND `userpwd`='" + request.getParameter("userpwd") + "'"  ; 
	
    ResultSet rs =con.createStatement().executeQuery(sql);
    
    if(rs.next()){            
        session.setAttribute("userid",request.getParameter("userid"));
		con.close();//結束資料庫連結
        response.sendRedirect("bossitem.jsp") ;
    }
    else{
		con.close();//結束資料庫連結
        out.println("<script>self.location=document.referrer; alert('帳號密碼不符，請重新登入');</script>") ;
	}
}
else
	response.sendRedirect("userlogin.jsp");
%>