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
		 String borrow_people = request.getParameter("borrow_people").toString();
  	     borrow_people = new String(borrow_people.getBytes("iso-8859-1"),"utf-8");
  	     
  	     String borrow_lend_action = request.getParameter("borrow_lend_action").toString();
  	     borrow_lend_action = new String(borrow_lend_action.getBytes("iso-8859-1"),"utf-8");
  	     
  	     String borrow_thing_name = request.getParameter("borrow_thing_name").toString();
  	     borrow_thing_name = new String(borrow_thing_name.getBytes("iso-8859-1"),"utf-8");
  	     
  	     String borrow_shuliang = request.getParameter("borrow_shuliang").toString();
  	     borrow_shuliang = new String(borrow_shuliang.getBytes("iso-8859-1"),"utf-8");
  	     
  	     String lend_people = request.getParameter("lend_people").toString();
  	     lend_people = new String(lend_people.getBytes("iso-8859-1"),"utf-8");
  	     
  	     
  	     String danbaopeople_name = request.getParameter("danbaopeople_name").toString();
  	     danbaopeople_name = new String(danbaopeople_name.getBytes("iso-8859-1"),"utf-8");
  	     
  	     String guihuan_time = request.getParameter("guihuan_time").toString();
  	     guihuan_time = new String(guihuan_time.getBytes("iso-8859-1"),"utf-8");
 


		 String number = request.getParameter("number").toString();
  	     number = new String(number.getBytes("iso-8859-1"),"utf-8");
  	     
  	     String shengyushuliang = request.getParameter("shengyushuliang").toString();
  	     shengyushuliang = new String(shengyushuliang.getBytes("iso-8859-1"),"utf-8");
  	     
  	     
  	     
  	     
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
		 
		
		 
		 String borrow_time = time_yearmonthday + " " + time_hourminute;
  	     
  	     
  	     

	     String dbUrl = "jdbc:mysql://127.0.0.1:3309/medicine_manage";
		 String dbUsr = "root";
  	     String dbPwd = "475356336";
		 Connection conn = null; 	    	
  	   	 String sql = "select * from borrow order by id desc";
  	     PreparedStatement statement = null;
  	     ResultSet rs = null;
  	     
  	     PreparedStatement statement2 = null;
  	     PreparedStatement statement3 = null;
  	     
  	     
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
		        
				String sql2 = "insert into borrow (id,number,lend_people,borrow_people,borrow_lend_action,borrow_thing_name,borrow_time,danbaopeople_name,guihuan_time,borrow_shuliang) values(" +id+ ",'" +number+ "','" +lend_people+ "','" +borrow_people+ "','" +borrow_lend_action+ "','" +borrow_thing_name+ "','" +borrow_time+ "','" +danbaopeople_name+ "','" +guihuan_time+ "','" +borrow_shuliang+ "')";
		        
		        statement2 = conn.prepareStatement(sql2);
		        statement2.executeUpdate(sql2);
		        
		        
		        
		        String sql3 = "update book set book_shuliang_rest = '"+shengyushuliang+"' where number='"+number+"'";
		        
		        statement3 = conn.prepareStatement(sql3);
		        statement3.executeUpdate(sql3);
		        
		        
				response.sendRedirect("look_yaopin_add.jsp");
		        	
		        
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
