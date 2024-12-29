<%@ page import = "java.sql.*, java.util.*"%><%@include file="config.jsp" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%
                  
	String idnum = request.getParameter("idnum");//商品number
	String person =request.getParameter("person");//商品名稱
	String price = request.getParameter("price");//商品價格
	String quan = request.getParameter("quan");//庫存
	int Quan = Integer.parseInt(quan);
	String mquan = request.getParameter("mquan");//消費者選取數量
	int Mquan = Integer.parseInt(mquan);
	String id=(String)session.getAttribute("id");//消費者信箱
	//String person=new String(request.getParameter("person").getBytes("ISO-8859-1"),"UTF-8");
    
	
	if(Mquan>Quan)//下訂數量大於庫存
	{
	%>

	<script type="text/javascript" language="javascript">
	alert("庫存數量不足");
	window.document.location.href="index2.jsp";
	</script> 

	<%
	}
	else if(Mquan==0)//select沒有選擇數量
	{
	%>

	<script type="text/javascript" language="javascript">
	alert("不可以不選");
	window.document.location.href="index2.jsp";
	</script>

	<%
	}
                        
                      
	else
	{           
                              
	con.createStatement().execute("use item");
	sql = "insert into buycar(idnum,person,price,quan,buy,memmail)";
	sql+="values ('"+idnum+"', ";  
	sql+="'" +person+ "', ";
	sql+="'"+price+"', ";
	sql+="'"+quan+"', ";
	sql+="'"+mquan+"', ";
	sql+="'"+id+"');";                          
    //con.createStatement().execute                        
							 
	Boolean rs = con.createStatement().execute(sql);
	if(rs==true)
	{
		out.print("新增失敗");
		response.sendRedirect("buycar.jsp");
	}
	else
	{								
		out.print("<script>self.location=document.referrer; alert('新增成功');</script>");               
	}
		con.close();//關閉連線
	}

%>