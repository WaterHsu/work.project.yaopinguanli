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
  	     
  	  //   int medicine_shuliang_total = Integer.parseInt(medicine_shuliang_total_string);
  	  //   int medicine_shuliang_total = Integer.parseInt(medicine_shuliang_total_string);


		 String medicine_lurupeople = request.getParameter("medicine_lurupeople").toString();
  	     medicine_lurupeople = new String(medicine_lurupeople.getBytes("iso-8859-1"),"utf-8");
  	     
  	     String medicine_zerenren = request.getParameter("medicine_zerenren").toString();
  	     medicine_zerenren = new String(medicine_zerenren.getBytes("iso-8859-1"),"utf-8");
  	     
  	     
  	     
  	     int year,month,day,hour,minute; 
		 Calendar c = Calendar.getInstance(); 
		 year = c.get(Calendar.YEAR); //年 
		 month = c.get(Calendar.MONTH) + 1; //月 
		 day = c.get(Calendar.DAY_OF_MONTH); //日 
		 hour = c.get(Calendar.HOUR_OF_DAY); //时（HOUR——十二小时制；HOUR_OF_DAY——二十四小时制） 
		 minute = c.get(Calendar.MINUTE); //分 
		 
		 String hour1 = "";
		 String minute1 = "";
		 
		 if(hour < 10)
		 {
		 	hour1 += "0";
		 	hour1 += hour;
		 }
		 else 
		 {
		 	hour1 += hour;
		 }
		 
		 if(minute < 10)
		 {
		 	minute1 += "0";
		 	minute1 += minute;
		 }
		 else
		 {
		 	minute1 += minute;
		 }
		 
		 Random random = new Random(); 
    	 int x = 1000 + random.nextInt(9000);
		 
		 String time_yearmonthday = "";
		 time_yearmonthday += year;
		 time_yearmonthday += "-";
		 time_yearmonthday += month;
		 time_yearmonthday += "-";
		 time_yearmonthday += day;
		 
		 String time_hourminute = "";
		 time_hourminute += hour1;
		 time_hourminute += ":";
		 time_hourminute += minute1;
		 
		 String number = "";
		 number += year;
		 number += month;
		 number += day;
		 number += hour;
		 number += minute;
		 number += x;
		 
		 String lurutime = time_yearmonthday + " " + time_hourminute;
  	     
  	     
  	     

	     String dbUrl = "jdbc:mysql://127.0.0.1:3309/medicine_manage";
		 String dbUsr = "root";
  	     String dbPwd = "475356336";
		 Connection conn = null; 	    
   	  //   String sql = "insert into medicine (number,medicine_name,medicine_guige,medicine_location,medicine_shengchantime,medicine_youxiaotime,medicine_beizhu,medicine_shuliang_total,medicine_shuliang_rest,medicine_jilutime,medicine_lurupeople,medicine_fuzeren) values ('" +number+ "','" +medicine_name+ "','" +medicine_guige+ "','" +medicine_location+ "','" +medicine_shengchantime+ "','" +medicine_youxiaotime+ "','" +medicine_beizhu+ "','" +medicine_shuliang_total+ "','" +medicine_shuliang_total+ "','" +lurutime+ "','" +medicine_lurupeople+ "','" +medicine_zerenren+ "') ";
  	   	 String sql = "select * from medicine order by id desc";
  	     PreparedStatement statement = null;
  	     ResultSet rs = null;
  	     
  	     PreparedStatement statement2 = null;
  	     ResultSet rs2 = null;
  	     
  	     
  	     int id = 0;
  	
  	       	      	     
  	     
  	     try
  	     {
  	     		Class.forName("com.mysql.jdbc.Driver");
		 	    conn = DriverManager.getConnection(dbUrl, dbUsr, dbPwd);
		 
		        statement = conn.prepareStatement(sql);
		        rs = statement.executeQuery(sql);
		        
		        while(rs.next())
		        {
		        	id = rs.getInt("id");
		        	break;
		        }
		        
		        id++;
		        
		        String sql2 = "insert into medicine (id,number,medicine_name,medicine_guige,medicine_location,medicine_shengchantime,medicine_youxiaotime,medicine_beizhu,medicine_shuliang_total,medicine_shuliang_rest,medicine_jilutime,medicine_lurupeople,medicine_fuzeren) values (" +id+ ",'" +number+ "','" +medicine_name+ "','" +medicine_guige+ "','" +medicine_location+ "','" +medicine_shengchantime+ "','" +medicine_youxiaotime+ "','" +medicine_beizhu+ "','" +medicine_shuliang_total+ "','" +medicine_shuliang_total+ "','" +lurutime+ "','" +medicine_lurupeople+ "','" +medicine_zerenren+ "') ";
		        
		        statement2 = conn.prepareStatement(sql2);
		        statement2.executeUpdate(sql2);
		        
		        
				response.sendRedirect("tianjia_yaopin.jsp");
		        	
		        
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
