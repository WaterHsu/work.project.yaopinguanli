<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<%@page import="java.io.*" %>
<%@page import="java.lang.*" %>


<% 
	 	 String leibie = request.getParameter("leibie").toString();
  	     leibie = new String(leibie.getBytes("iso-8859-1"),"utf-8");
  	     
  	     String tiaojie = request.getParameter("tiaojie").toString();
  	     tiaojie = new String(tiaojie.getBytes("iso-8859-1"),"utf-8");
  	     
  	     String temp = leibie +  "$" + tiaojie;
  	     
  		 session.setAttribute("sousuo", temp);

		 response.sendRedirect("index.jsp");
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
