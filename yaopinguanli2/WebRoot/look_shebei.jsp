<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<%@page import="java.beans.Statement"%>  
<%@page import="com.mysql.jdbc.Driver"%>  
<%@page import="java.sql.*"%>  
<%@page import="java.io.*" %>
<%@page import="java.lang.*" %>


<% 	     
  	     String number = request.getParameter("id");

	     String dbUrl = "jdbc:mysql://127.0.0.1:3309/medicine_manage";
		 String dbUsr = "root";
  	     String dbPwd = "475356336";
		 Connection conn = null; 	    
   	  	 String sql = "select * from borrow where number = '" +number+ "'";
   	  	 String sql2 = "select * from device where number = '" +number+ "'";
  	     PreparedStatement statement = null;
  	     PreparedStatement statement2 = null;
  	     ResultSet rs = null;
  	     ResultSet rs2 = null;
  	     
  	
  	       	      	     
  	     
  	     try
  	     {
  	     		Class.forName("com.mysql.jdbc.Driver");
		 	    conn = DriverManager.getConnection(dbUrl, dbUsr, dbPwd);
		 
		        statement = conn.prepareStatement(sql);
		        rs = statement.executeQuery(sql);  
		        
		        statement2 = conn.prepareStatement(sql2);
		        rs2 = statement2.executeQuery(sql2);    
		        
		        	 
  	    
%>




<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'look_shebei.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	
		<link href="yaopin.css" rel="stylesheet" type="text/css" />
	
	
	<script>
	
		function add_borrow(number)
	 	{
	 		var url = "look_shebei_add.jsp" + "?id=" + number;
  			window.showModalDialog(url,window,'');
  			
  			window.location.reload();
	 	}
	
	 
	
		function fclose()
		{
			self.close();
		}
	
	
	 
	 </script>
	
	

  </head>
  
  <body>

		<table id="mytable">
    			<tr>
    				<th scope="col">借/还时间</th>
    				<th scope="col">借/还人</th>
    				<th scope="col">借/还</th>
    				<th scope="col">物品</th>
    				<th scope="col">借的物品数量</th>
    				<th scope="col">借出/归还经手人</th>
    				<th scope="col">担保人</th>
    				<th scope="col">应归还时间</th>
    			</tr>
    			
    			<% 
    				while(rs.next())
    				{
    			%>
    			<tr>
    				<td class="row"><%=rs.getString("borrow_time") %></td>
    				<td class="row"><%=rs.getString("borrow_people") %></td>
    				<td class="row"><%=rs.getString("borrow_lend_action") %></td>
    				<td class="row"><%=rs.getString("borrow_thing_name") %></td>
    				<td class="row"><%=rs.getString("borrow_shuliang") %></td>
    				<td class="row"><%=rs.getString("lend_people") %></td>
    				<td class="row"><%=rs.getString("danbaopeople_name") %></td>
    				<td class="row"><%=rs.getString("guihuan_time") %></td>
    			</tr>
    			<% 
    				}
    			%>   	
    	</table>
    	
    	<br><br><br><br>
    	
    	<table>
    		<tr>
    			<th scope="col">药品/消耗品总数</th>
    			<% 
    				while(rs2.next())
    				{
    			%>
    			<td><input value="<%=rs2.getString("device_shuliang_total") %>" readonly /></td>
    			<th scope="col">药品/消耗品剩余数量</th>
    			<td><input value="<%=rs2.getString("device_shuliang_rest") %>" readonly /></td>
    			<% 
    				}
    			%>
    		</tr>
    	</table>
  <% 
 	}catch(Exception e)
	{
		e.printStackTrace();
	}
 %>
    	
    	<br><br><br><br>
    		
		<center>
    		<input type="button" value="添加" onclick="add_borrow('<%=number%>')" /> &nbsp;&nbsp;&nbsp;
    		<input type="button" value="关闭" onclick="fclose();" />
		</center>    


  </body>
</html>
