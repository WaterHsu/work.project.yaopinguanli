<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加图书/期刊</title>
    
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
		
		<form method="post" action="tianjia_tushu_add.jsp">
    	<table>
    		<tr>
    			<th>图书/期刊名字:</th>
    			<td><input type="text" name="book_name"  /></td>
    			
    			<th>图书/期刊种类:</th>
    			<td><input type="text" name="book_zhonglei"  /></td>
    		</tr>
    		<tr>
    		
    			<th>出版机构/作者:</th>
    			<td><input type="text" name="book_zuozhe"  /></td>
    		
    			<th>图书/期刊出版时间:</th>
    			<td><input type="text" name="book_chubantime"  /></td>
    		</tr>
    		
    		<tr>
    			<th>图书/期刊总数量:</th>
    			<td><input type="text" name="book_shuliang_total" /></td>
    		</tr>
    		
    		<tr>
    			<th>图书/期刊存放位置:</th>
    			<td><input type="text" name="book_location"  /></td>
    		</tr>
    		
    		
    		<tr>
    			<th>图书/期刊录入人:</th>
    			<td><input type="text" name="book_lurupeople"  /></td>
    		
    			<th>图书/期刊负责人:</th>
    			<td><input type="text" name="book_fuzeren"  /></td>
    		</tr>
    		<tr>
    			<td></td>
    			<td><input type="submit" value="提交" > &nbsp; <input type="button" value="关闭" onclick="fclose();" /></td>
    		</tr>
    	</table>
    	</form>    


  </body>
</html>
