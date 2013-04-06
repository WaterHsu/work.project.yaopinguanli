<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>" target="_self">
    
    <title>添加设备/器械记录</title>
    
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
    	
    	
    	<form method="post" action="tianjia_shebei_add.jsp">
    	<table>
    		<tr>
    			<th>名称:</th>
    			<td><input type="text" name="device_name"  /></td>
    		
    			<th>型号:</th>
    			<td><input type="text" name="device_xinghao"  /></td>
    		</tr>
    		
    		<tr>
    			<th>责任人:</th>
    			<td><input type="text" name="device_zerenpeople"  /></td>
    		</tr>
    		
    		<tr>
    			<th>安放位置:</th>
    			<td><input type="text" name="device_location" /></td>
    		
    			<th>生产日期:</th>
    			<td><input type="text" name="device_shangchantime" /></td>
    		</tr>
    		
    		<tr>
    			<th>状态:</th>
    			<td><input type="text" name="device_state"  /></td>
    		</tr>
    		
    		<tr>
    			<th>总数量:</th>
    			<td><input type="text" name="device_shuliang_total"  /></td>
    		  		
    			<th>录入人:</th>
    			<td><input type="text" name="device_lurupeople"  /></td>
    		</tr>
    		<tr>
    			<td></td>
    			<td><input type="submit" value="提交" > &nbsp; <input type="button" value="关闭" onclick="fclose();" /></td>
    		</tr>
    	</table>
    	</form>
    	
    	
  </body>
</html>
