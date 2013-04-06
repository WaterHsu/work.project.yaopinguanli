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
		 String device_name = request.getParameter("device_name").toString();
  	     device_name = new String(device_name.getBytes("iso-8859-1"),"utf-8");
  	     
  	     String device_xinghao = request.getParameter("device_xinghao").toString();
  	     device_xinghao = new String(device_xinghao.getBytes("iso-8859-1"),"utf-8");
  	     
  	     String device_zerenpeople = request.getParameter("device_zerenpeople").toString();
  	     device_zerenpeople = new String(device_zerenpeople.getBytes("iso-8859-1"),"utf-8");
  	     
  	     String device_location = request.getParameter("device_location").toString();
  	     device_location = new String(device_location.getBytes("iso-8859-1"),"utf-8");
  	     
  	     String device_shangchantime = request.getParameter("device_shangchantime").toString();
  	     device_shangchantime = new String(device_shangchantime.getBytes("iso-8859-1"),"utf-8");
  	     
  	     
  	     String device_state = request.getParameter("device_state").toString();
  	     device_state = new String(device_state.getBytes("iso-8859-1"),"utf-8");
  	     
  	     String device_shuliang_total = request.getParameter("device_shuliang_total").toString();
  	     device_shuliang_total = new String(device_shuliang_total.getBytes("iso-8859-1"),"utf-8");
  	     
  	     
  	     String device_lurupeople = request.getParameter("device_lurupeople").toString();
  	     device_lurupeople = new String(device_lurupeople.getBytes("iso-8859-1"),"utf-8");
  	     
  	     
  	     
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
  	   	 String sql = "select * from device order by id desc";
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
		        
		        String sql2 = "insert into device (id,number,device_name,device_xinghao,device_zerenpeople,device_location,device_shengchantime,device_state,device_shuliang_total,device_shuliang_rest,device_lurutime,device_lurupeople) values (" +id+ ",'" +number+ "','" +device_name+ "','" +device_xinghao+ "','" +device_zerenpeople+ "','" +device_location+ "','" +device_shangchantime+ "','" +device_state+ "','" +device_shuliang_total+ "','" +device_shuliang_total+ "','" +lurutime+ "','" +device_lurupeople+ "') ";
		        
		        statement2 = conn.prepareStatement(sql2);
		        statement2.executeUpdate(sql2);
		        
		        
				response.sendRedirect("tianjia_shebei.jsp");
		        	
		        
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
