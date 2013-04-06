<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>" target="_self">
    
    <title>添加药品/消耗品</title>
    
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
  
  		<form method="post" action="tianjia_yaopin_add.jsp">
    	<table>
    		<tr>
    			<th>药品名称:</th>
    			<td><input type="text" name="medicine_name"  /></td>
    		
    			<th>规格:</th>
    			<td><input type="text" name="medicine_guige"  /></td>
    		</tr>
    		
    		<tr>
    			<th>存放位置:</th>
    			<td><input type="text" name="medicine_location"  /></td>
    		</tr>
    		
    		<tr>
    			<th>生产时间:</th>
    			<td><input type="text" name="medicine_shengchantime" /></td>
    		
    			<th>有效时间:</th>
    			<td><input type="text" name="medicine_youxiaotime" /></td>
    		</tr>
    		
    		<tr>
    			<th>备注:</th>
    			<td><input type="text" name="medicine_beizhu"  /></td>
    		</tr>
    		
    		<tr>
    			<th>药品/消耗品总数量:</th>
    			<td><input type="text" name="medicine_shuliang_total"  /></td>
    		</tr>
    		
    		<tr>
    			<th>药品/消耗品录入人:</th>
    			<td><input type="text" name="medicine_lurupeople"  /></td>
    		
    			<th>药品/消耗品责任人:</th>
    			<td><input type="text" name="medicine_zerenren"  /></td>
    		</tr>
    		<tr>
    			<td></td>
    			<td><input type="submit" value="提交" > &nbsp; <input type="button" value="关闭" onclick="fclose();" /></td>
    		</tr>
    	</table>
    	</form>
    
  </body>
</html>
