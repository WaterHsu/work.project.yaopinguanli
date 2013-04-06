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
			
		<form method="post" action="alter_shebei_alter.jsp">
    		 <% 
    		 	 while(rs.next())
    		 	 {
    		 %>
    		 <table>
    		 	<tr>
    				<th>设备/器材名称:</th>
    				<td><input type="text" name="device_name" value="<%=rs.getString("device_name") %>"  /></td>
    		
    				<th>设备/器材型号:</th>
    				<td><input type="text" name="device_xinghao" value="<%=rs.getString("device_xinghao") %>"  /></td>
    			</tr>
    			
    			<tr>
    				<th>设备/器材责任人:</th>
    				<td><input type="text" name="device_zerenpeople" value="<%=rs.getString("device_zerenpeople") %>" /></td>
    		
    			</tr>
    		
    			<tr>
    				<th>安放位置:</th>
    				<td><input type="text" name="device_location" value="<%=rs.getString("device_location") %>"   /></td>
    			</tr>
    		
    			<tr>
    				<th>生产时间:</th>
    				<td><input type="text" name="device_shengchantime" value="<%=rs.getString("device_shengchantime") %>"  /></td>
    		
    				<th>设备/器材状态:</th>
    				<td><input type="text" name="device_state" value="<%=rs.getString("device_state") %>"  /></td>
    			</tr>
    		
    			<tr>
    				<th>设备/器材总数量:</th>
    				<td><input type="text" name="device_shuliang_total" value="<%=rs.getString("device_shuliang_total") %>"   /></td>
    			</tr>
    		
    			<tr>
    				<th>设备/器材剩余数量:</th>
    				<td><input type="text" name="device_shuliang_rest" value="<%=rs.getString("device_shuliang_rest") %>"   /></td>
    				
    				<th>录入时间:</th>
    				<td><input type="text" name="device_lurutime" value="<%=rs.getString("device_lurutime") %>" readonly   /></td>
    			</tr>
    		
    			<tr>
    				<th>录入人:</th>
    				<td><input type="text" name="device_lurupeople" value="<%=rs.getString("device_lurupeople") %>"   /></td>
    		
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
