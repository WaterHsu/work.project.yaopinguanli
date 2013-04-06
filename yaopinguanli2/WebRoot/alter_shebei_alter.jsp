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
		 String number = request.getParameter("number").toString();
  	     number = new String(number.getBytes("iso-8859-1"),"utf-8");

		 String device_name = request.getParameter("device_name").toString();
  	     device_name = new String(device_name.getBytes("iso-8859-1"),"utf-8");
  	     
  	     String device_xinghao = request.getParameter("device_xinghao").toString();
  	     device_xinghao = new String(device_xinghao.getBytes("iso-8859-1"),"utf-8");
  	     
  	     String device_zerenpeople = request.getParameter("device_zerenpeople").toString();
  	     device_zerenpeople = new String(device_zerenpeople.getBytes("iso-8859-1"),"utf-8");
  	     
  	     String device_location = request.getParameter("device_location").toString();
  	     device_location = new String(device_location.getBytes("iso-8859-1"),"utf-8");
  	     
  	     String device_shengchantime = request.getParameter("device_shengchantime").toString();
  	     device_shengchantime = new String(device_shengchantime.getBytes("iso-8859-1"),"utf-8");
  	     
  	     
  	     String device_state = request.getParameter("device_state").toString();
  	     device_state = new String(device_state.getBytes("iso-8859-1"),"utf-8");
  	     
  	     String device_shuliang_total = request.getParameter("device_shuliang_total").toString();
  	     device_shuliang_total = new String(device_shuliang_total.getBytes("iso-8859-1"),"utf-8");
		
		 String device_shuliang_rest = request.getParameter("device_shuliang_rest").toString();
  	     device_shuliang_rest = new String(device_shuliang_rest.getBytes("iso-8859-1"),"utf-8");

  	     
  	     String device_lurupeople = request.getParameter("device_lurupeople").toString();
  	     device_lurupeople = new String(device_lurupeople.getBytes("iso-8859-1"),"utf-8");
  	     
     

	     String dbUrl = "jdbc:mysql://127.0.0.1:3309/medicine_manage";
		 String dbUsr = "root";
  	     String dbPwd = "475356336";
		 Connection conn = null; 	    
   	  //   String sql = "insert into medicine (number,medicine_name,medicine_guige,medicine_location,medicine_shengchantime,medicine_youxiaotime,medicine_beizhu,medicine_shuliang_total,medicine_shuliang_rest,medicine_jilutime,medicine_lurupeople,medicine_fuzeren) values ('" +number+ "','" +medicine_name+ "','" +medicine_guige+ "','" +medicine_location+ "','" +medicine_shengchantime+ "','" +medicine_youxiaotime+ "','" +medicine_beizhu+ "','" +medicine_shuliang_total+ "','" +medicine_shuliang_total+ "','" +lurutime+ "','" +medicine_lurupeople+ "','" +medicine_zerenren+ "') ";
  	   	 String sql1 = "update device set device_name = '"+device_name+"' where number='"+number+"'";
  	   	 String sql2 = "update device set device_xinghao = '"+device_xinghao+"' where number='"+number+"'";
  	   	 String sql3 = "update device set device_zerenpeople = '"+device_zerenpeople+"' where number='"+number+"'";
  	   	 String sql4 = "update device set device_location = '"+device_location+"' where number='"+number+"'";
  	   	 String sql5 = "update device set device_shengchantime = '"+device_shengchantime+"' where number='"+number+"'";
  	   	 String sql6 = "update device set device_state = '"+device_state+"' where number='"+number+"'";
  	   	 String sql7 = "update device set device_shuliang_total = '"+device_shuliang_total+"' where number='"+number+"'";
  	   	 String sql8 = "update device set device_shuliang_rest = '"+device_shuliang_rest+"' where number='"+number+"'";
  	   	 String sql9 = "update device set device_lurupeople = '"+device_lurupeople+"' where number='"+number+"'";
  	   	 
  	     PreparedStatement statement1 = null;	     
  	     PreparedStatement statement2 = null;
  	     PreparedStatement statement3 = null;
  	     PreparedStatement statement4 = null;
  	     PreparedStatement statement5 = null;
  	     PreparedStatement statement6 = null;
  	     PreparedStatement statement7 = null;
  	     PreparedStatement statement8 = null;
  	     PreparedStatement statement9 = null;
  	    
  	     
  	     
  	     
  	     int id = 0;
  	
  	       	      	     
  	     
  	     try
  	     {
  	     		Class.forName("com.mysql.jdbc.Driver");
		 	    conn = DriverManager.getConnection(dbUrl, dbUsr, dbPwd);
		 
		        statement1 = conn.prepareStatement(sql1);
		        statement1.executeUpdate(sql1);
		        
		        statement2 = conn.prepareStatement(sql2);
		        statement2.executeUpdate(sql2);
		        
		        statement3 = conn.prepareStatement(sql3);
		        statement3.executeUpdate(sql3);
		        
		        statement4 = conn.prepareStatement(sql4);
		        statement4.executeUpdate(sql4);
		        
		        statement5 = conn.prepareStatement(sql5);
		        statement5.executeUpdate(sql5);
		        
		        statement6 = conn.prepareStatement(sql6);
		        statement6.executeUpdate(sql6);
		        
		        statement7 = conn.prepareStatement(sql7);
		        statement7.executeUpdate(sql7);
		        
		        statement8 = conn.prepareStatement(sql8);
		        statement8.executeUpdate(sql8);
		        
		        statement9 = conn.prepareStatement(sql9);
		        statement9.executeUpdate(sql9);
		         
		        
		        
				response.sendRedirect("alter_shebei.jsp?id=" +number+ "");
		        	
		        
		 }catch(Exception e)
		 {
		 	e.printStackTrace();
		 }
  	    
%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'alter_shebei_alter.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    
  </body>
</html>
