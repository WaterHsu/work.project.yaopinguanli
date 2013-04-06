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

		 String medicine_name = request.getParameter("medicine_name").toString();
  	     medicine_name = new String(medicine_name.getBytes("iso-8859-1"),"utf-8");
  	     
  	     String medicine_guige = request.getParameter("medicine_guige").toString();
  	     medicine_guige = new String(medicine_guige.getBytes("iso-8859-1"),"utf-8");
  	     
  	     String medicine_location = request.getParameter("medicine_location").toString();
  	     medicine_location = new String(medicine_location.getBytes("iso-8859-1"),"utf-8");
  	     
  	     String medicine_shengchantime = request.getParameter("medicine_shengchantime").toString();
  	     medicine_shengchantime = new String(medicine_shengchantime.getBytes("iso-8859-1"),"utf-8");
  	     
  	     String medicine_youxiaotime = request.getParameter("medicine_youxiaotime").toString();
  	     medicine_youxiaotime = new String(medicine_youxiaotime.getBytes("iso-8859-1"),"utf-8");
  	     
  	     
  	     String medicine_beizhu = request.getParameter("medicine_beizhu").toString();
  	     medicine_beizhu = new String(medicine_beizhu.getBytes("iso-8859-1"),"utf-8");
  	     
  	     String medicine_shuliang_total = request.getParameter("medicine_shuliang_total").toString();
  	     medicine_shuliang_total = new String(medicine_shuliang_total.getBytes("iso-8859-1"),"utf-8");
		
		 String medicine_shuliang_rest = request.getParameter("medicine_shuliang_rest").toString();
  	     medicine_shuliang_rest = new String(medicine_shuliang_rest.getBytes("iso-8859-1"),"utf-8");

		 String medicine_lurupeople = request.getParameter("medicine_lurupeople").toString();
  	     medicine_lurupeople = new String(medicine_lurupeople.getBytes("iso-8859-1"),"utf-8");
  	     
  	     String medicine_zerenren = request.getParameter("medicine_zerenren").toString();
  	     medicine_zerenren = new String(medicine_zerenren.getBytes("iso-8859-1"),"utf-8");
  	     
     

	     String dbUrl = "jdbc:mysql://127.0.0.1:3309/medicine_manage";
		 String dbUsr = "root";
  	     String dbPwd = "475356336";
		 Connection conn = null; 	    
   	  //   String sql = "insert into medicine (number,medicine_name,medicine_guige,medicine_location,medicine_shengchantime,medicine_youxiaotime,medicine_beizhu,medicine_shuliang_total,medicine_shuliang_rest,medicine_jilutime,medicine_lurupeople,medicine_fuzeren) values ('" +number+ "','" +medicine_name+ "','" +medicine_guige+ "','" +medicine_location+ "','" +medicine_shengchantime+ "','" +medicine_youxiaotime+ "','" +medicine_beizhu+ "','" +medicine_shuliang_total+ "','" +medicine_shuliang_total+ "','" +lurutime+ "','" +medicine_lurupeople+ "','" +medicine_zerenren+ "') ";
  	   	 String sql1 = "update medicine set medicine_name = '"+medicine_name+"' where number='"+number+"'";
  	   	 String sql2 = "update medicine set medicine_guige = '"+medicine_guige+"' where number='"+number+"'";
  	   	 String sql3 = "update medicine set medicine_location = '"+medicine_location+"' where number='"+number+"'";
  	   	 String sql4 = "update medicine set medicine_shengchantime = '"+medicine_shengchantime+"' where number='"+number+"'";
  	   	 String sql5 = "update medicine set medicine_youxiaotime = '"+medicine_youxiaotime+"' where number='"+number+"'";
  	   	 String sql6 = "update medicine set medicine_beizhu = '"+medicine_beizhu+"' where number='"+number+"'";
  	   	 String sql7 = "update medicine set medicine_shuliang_total = '"+medicine_shuliang_total+"' where number='"+number+"'";
  	   	 String sql8 = "update medicine set medicine_lurupeople = '"+medicine_lurupeople+"' where number='"+number+"'";
  	   	 String sql9 = "update medicine set medicine_fuzeren = '"+medicine_zerenren+"' where number='"+number+"'";
  	   	 String sql10 = "update medicine set medicine_shuliang_rest = '"+medicine_shuliang_rest+"' where number='"+number+"'";
  	   	 
  	     PreparedStatement statement1 = null;	     
  	     PreparedStatement statement2 = null;
  	     PreparedStatement statement3 = null;
  	     PreparedStatement statement4 = null;
  	     PreparedStatement statement5 = null;
  	     PreparedStatement statement6 = null;
  	     PreparedStatement statement7 = null;
  	     PreparedStatement statement8 = null;
  	     PreparedStatement statement9 = null;
  	     PreparedStatement statement10 = null;
  	     
  	     
  	     
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
		        
		        
		        statement10 = conn.prepareStatement(sql10);
		        statement10.executeUpdate(sql10);
		         
		        
		        
				response.sendRedirect("alter_yaopin.jsp?id=" +number+ "");
		        	
		        
		 }catch(Exception e)
		 {
		 	e.printStackTrace();
		 }
  	    
%>




<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title></title>
    
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
