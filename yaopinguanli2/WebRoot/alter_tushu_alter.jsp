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

		 String book_name = request.getParameter("book_name").toString();
  	     book_name = new String(book_name.getBytes("iso-8859-1"),"utf-8");
  	     
  	     String book_zhonglei = request.getParameter("book_zhonglei").toString();
  	     book_zhonglei = new String(book_zhonglei.getBytes("iso-8859-1"),"utf-8");
  	     
  	     String book_zuozhe = request.getParameter("book_zuozhe").toString();
  	     book_zuozhe = new String(book_zuozhe.getBytes("iso-8859-1"),"utf-8");
  	     
  	     String book_chubantime = request.getParameter("book_chubantime").toString();
  	     book_chubantime = new String(book_chubantime.getBytes("iso-8859-1"),"utf-8");
  	     
  	     String book_shuliang_total = request.getParameter("book_shuliang_total").toString();
  	     book_shuliang_total = new String(book_shuliang_total.getBytes("iso-8859-1"),"utf-8");
  	     
  	     
  	     String book_shuliang_rest = request.getParameter("book_shuliang_rest").toString();
  	     book_shuliang_rest = new String(book_shuliang_rest.getBytes("iso-8859-1"),"utf-8");
  	     
  	     String book_location = request.getParameter("book_location").toString();
  	     book_location = new String(book_location.getBytes("iso-8859-1"),"utf-8");
		
		 String book_lurutime = request.getParameter("book_lurutime").toString();
  	     book_lurutime = new String(book_lurutime.getBytes("iso-8859-1"),"utf-8");

		 String book_lurupeople = request.getParameter("book_lurupeople").toString();
  	     book_lurupeople = new String(book_lurupeople.getBytes("iso-8859-1"),"utf-8");
  	     
  	     String book_fuzeren = request.getParameter("book_fuzeren").toString();
  	     book_fuzeren = new String(book_fuzeren.getBytes("iso-8859-1"),"utf-8");
  	     
     

	     String dbUrl = "jdbc:mysql://127.0.0.1:3309/medicine_manage";
		 String dbUsr = "root";
  	     String dbPwd = "475356336";
		 Connection conn = null; 	    
   	  //   String sql = "insert into medicine (number,medicine_name,medicine_guige,medicine_location,medicine_shengchantime,medicine_youxiaotime,medicine_beizhu,medicine_shuliang_total,medicine_shuliang_rest,medicine_jilutime,medicine_lurupeople,medicine_fuzeren) values ('" +number+ "','" +medicine_name+ "','" +medicine_guige+ "','" +medicine_location+ "','" +medicine_shengchantime+ "','" +medicine_youxiaotime+ "','" +medicine_beizhu+ "','" +medicine_shuliang_total+ "','" +medicine_shuliang_total+ "','" +lurutime+ "','" +medicine_lurupeople+ "','" +medicine_zerenren+ "') ";
  	   	 String sql1 = "update book set book_name = '"+book_name+"' where number='"+number+"'";
  	   	 String sql2 = "update book set book_zhonglei = '"+book_zhonglei+"' where number='"+number+"'";
  	   	 String sql3 = "update book set book_zuozhe = '"+book_zuozhe+"' where number='"+number+"'";
  	   	 String sql4 = "update book set book_chubantime = '"+book_chubantime+"' where number='"+number+"'";
  	   	 String sql5 = "update book set book_shuliang_total = '"+book_shuliang_total+"' where number='"+number+"'";
  	   	 String sql6 = "update book set book_shuliang_rest = '"+book_shuliang_rest+"' where number='"+number+"'";
  	   	 String sql7 = "update book set book_location = '"+book_location+"' where number='"+number+"'";
  	   	 String sql8 = "update book set book_lurutime = '"+book_lurutime+"' where number='"+number+"'";
  	   	 String sql9 = "update book set book_lurupeople = '"+book_lurupeople+"' where number='"+number+"'";
  	   	 String sql10 = "update book set book_fuzeren = '"+book_fuzeren+"' where number='"+number+"'";
  	   	 
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
		         
		        
		        
				response.sendRedirect("alter_tushu.jsp?id=" +number+ "");
		        	
		        
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
