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
   	  //   String sql = "insert into medicine (number,medicine_name,medicine_guige,medicine_location,medicine_shengchantime,medicine_youxiaotime,medicine_beizhu,medicine_shuliang_total,medicine_shuliang_rest,medicine_jilutime,medicine_lurupeople,medicine_fuzeren) values ('" +number+ "','" +medicine_name+ "','" +medicine_guige+ "','" +medicine_location+ "','" +medicine_shengchantime+ "','" +medicine_youxiaotime+ "','" +medicine_beizhu+ "','" +medicine_shuliang_total+ "','" +medicine_shuliang_total+ "','" +lurutime+ "','" +medicine_lurupeople+ "','" +medicine_zerenren+ "') ";
  	   	 String sql = "select * from device where number = '" +number+ "'";
  	     PreparedStatement statement = null;
  	     ResultSet rs = null;
  	
  	       	      	     
  	     
  	     try
  	     {
  	     		Class.forName("com.mysql.jdbc.Driver");
		 	    conn = DriverManager.getConnection(dbUrl, dbUsr, dbPwd);
		 
		        statement = conn.prepareStatement(sql);
		        rs = statement.executeQuery(sql);       
		 
  	    
%>




<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>" target="_self">
    
    <title>删除设备/器材记录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	
	<script>
	 	
		function fclose()
		{
			self.close();
		}
	 
	 </script>
	

  </head>
  
  <body>
  
  		<form method="post" action="delete_shebei_delete.jsp">
  			<input type="hidden" name="number" value="<%=number %>" />
  		<% 
  			if(rs.next())
  			{
  		%>
    	<input type="submit" value="删除"  >
    	<% 
    		}
    		else 
    		{
    	%>
    	<input type="submit" value="删除" disabled="disabled" >
    	<% 
    		}
    	%>
    	
    	 &nbsp; <input type="button" value="关闭" onclick="fclose();" />
    	</form>
    
  </body>
  
 <% 
 	}catch(Exception e)
 	{
 		e.printStackTrace();
 	}
 %>
</html>
