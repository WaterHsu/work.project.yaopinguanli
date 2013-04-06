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
  	   	 String sql = "select * from book where number = '" +number+ "'";
  	     PreparedStatement statement = null;
  	     ResultSet rs = null;
  	     
  	     
  	     int id = 0;
  	
  	       	      	     
  	     
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
    
    <title>修改设备/器材记录</title>
    
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
	 	
		function fclose()
		{
			self.close();
		}
	 
	 </script>
	
	

  </head>
  
  <body>
  
  
  		<form method="post" action="alter_tushu_alter.jsp">
    		 <% 
    		 	 while(rs.next())
    		 	 {
    		 %>
    		 <table>
    		 	<tr>
    				<th>图书/期刊名称:</th>
    				<td><input type="text" name="book_name" value="<%=rs.getString("book_name") %>"  /></td>
    		
    				<th>种类:</th>
    				<td><input type="text" name="book_zhonglei" value="<%=rs.getString("book_zhonglei") %>"  /></td>
    			</tr>
    		
    			<tr>
    				<th>出版机构/作者:</th>
    				<td><input type="text" name="book_zuozhe" value="<%=rs.getString("book_zuozhe") %>"   /></td>
    			</tr>
    		
    			<tr>
    				<th>出版时间:</th>
    				<td><input type="text" name="book_chubantime" value="<%=rs.getString("book_chubantime") %>"  /></td>
    		
    				<th>图书/期刊总数:</th>
    				<td><input type="text" name="book_shuliang_total" value="<%=rs.getString("book_shuliang_total") %>"  /></td>
    			</tr>
    		
    			<tr>
    				<th>图书/期刊剩余数量:</th>
    				<td><input type="text" name="book_shuliang_rest" value="<%=rs.getString("book_shuliang_rest") %>"   /></td>
    			</tr>
    		
    			<tr>
    				<th>图书/期刊存放位置:</th>
    				<td><input type="text" name="book_location" value="<%=rs.getString("book_location") %>"   /></td>
    				
    				<th>图书/期刊录入时间:</th>
    				<td><input type="text" name="book_lurutime" value="<%=rs.getString("book_lurutime") %>"   /></td>
    			</tr>
    		
    			<tr>
    				<th>图书/期刊录入人:</th>
    				<td><input type="text" name="book_lurupeople" value="<%=rs.getString("book_lurupeople") %>"   /></td>
    		
    				<th>图书/期刊责任人:</th>
    				<td><input type="text" name="book_fuzeren" value="<%=rs.getString("book_fuzeren") %>" /></td>
    			</tr>
    			
    			
    			<tr>
    				<td><input type="hidden" value="<%=number %>" name="number" /></td>
    				<td><input type="submit" value="提交" > &nbsp; <input type="button" value="关闭" onclick="fclose();" /></td>
    			</tr>
    			
    			
    		 </table>
    		<% 
    			}
    		%>
    	
    	</form>
  
    
  </body>
  
 
  <% 
 	}catch(Exception e)
	{
		 e.printStackTrace();
	}
 %>
 
 
</html>
