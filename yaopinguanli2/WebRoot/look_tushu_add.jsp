<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>



<% 	     
  	     String number = request.getParameter("id");	        
		   	    
%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>" target="_self">
    
    <title></title>
    
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
    
    	<form method="post" action="look_tushu_add_up.jsp">
   		<table>
   			<tr>
   				<th>借/还人</th>
   				<th>借/还</th>
   				<th>借/还物品</th>
   				<th>借/还物品数量</th>
   				<th>借出/归还经手人</th>
   				<th>担保人</th>
   				<th>应归还时间</th>
   				<th>借/还后物品剩余数量</th>
   			</tr>
   			
   			<tr>
   				<td><input name="borrow_people" type="text" /></td>
   				<td>
   					<select name="borrow_lend_action">
   						<option>===请选择===</option>
   						<option>借</option>
   						<option>还</option>
   					</select>
   				</td>
   				<td><input name="borrow_thing_name" type="text" /></td>
   				<td><input name="borrow_shuliang" type="text" /></td>
   				<td><input name="lend_people" type="text" /></td>
   				<td><input name="danbaopeople_name" type="text" /></td>
   				<td><input name="guihuan_time" type="text" /></td>
   				<td><input name="number" value="<%=number %>" type="hidden" /><input name="shengyushuliang" type="text" /></td>
   				
   			</tr>
   			
   		</table>
   		<br><br>
   			<center>
   				<input type="submit" value="添加" />&nbsp;&nbsp;
   				<input type="button" value="关闭" onclick="fclose();" />
   			</center>
   		</form>
    
    
  </body>
</html>
