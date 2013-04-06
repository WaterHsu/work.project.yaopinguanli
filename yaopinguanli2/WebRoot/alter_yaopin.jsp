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
  	   	 String sql = "select * from medicine where number = '" +number+ "'";
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
    
    <title>修改药品/消耗品信息</title>
    
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
    
    	<form method="post" action="alter_yaopin_alter.jsp">
    		 <% 
    		 	 while(rs.next())
    		 	 {
    		 %>
    		 <table>
    		 	<tr>
    				<th>药品名称:</th>
    				<td><input type="text" name="medicine_name" value="<%=rs.getString("medicine_name") %>"  /></td>
    		
    				<th>规格:</th>
    				<td><input type="text" name="medicine_guige" value="<%=rs.getString("medicine_guige") %>"  /></td>
    			</tr>
    		
    			<tr>
    				<th>存放位置:</th>
    				<td><input type="text" name="medicine_location" value="<%=rs.getString("medicine_location") %>"   /></td>
    			</tr>
    		
    			<tr>
    				<th>生产时间:</th>
    				<td><input type="text" name="medicine_shengchantime" value="<%=rs.getString("medicine_shengchantime") %>"  /></td>
    		
    				<th>有效时间:</th>
    				<td><input type="text" name="medicine_youxiaotime" value="<%=rs.getString("medicine_youxiaotime") %>"  /></td>
    			</tr>
    		
    			<tr>
    				<th>备注:</th>
    				<td><input type="text" name="medicine_beizhu" value="<%=rs.getString("medicine_beizhu") %>"   /></td>
    			</tr>
    		
    			<tr>
    				<th>药品/消耗品总数量:</th>
    				<td><input type="text" name="medicine_shuliang_total" value="<%=rs.getString("medicine_shuliang_total") %>"   /></td>
    				
    				<th>药品/消耗品剩余数量:</th>
    				<td><input type="text" name="medicine_shuliang_rest" value="<%=rs.getString("medicine_shuliang_rest") %>"   /></td>
    			</tr>
    		
    			<tr>
    				<th>药品/消耗品录入人:</th>
    				<td><input type="text" name="medicine_lurupeople" value="<%=rs.getString("medicine_lurupeople") %>"   /></td>
    		
    				<th>药品/消耗品责任人:</th>
    				<td><input type="text" name="medicine_zerenren" value="<%=rs.getString("medicine_fuzeren") %>" /></td>
    			</tr>
    			
    			<tr>
    				<th>药品/消耗品录入时间:</th>
    				<td><input type="text" name="medicine_jilutime" value="<%=rs.getString("medicine_jilutime") %>" readonly  /></td>
    		
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
 
 
 <% 
 	}catch(Exception e)
	{
		 e.printStackTrace();
	}
 %>
    	
    
  </body>
</html>
