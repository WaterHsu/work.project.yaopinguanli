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
		 String leibie = null;
		 String tiaojie = null;
		 String temp = null;
		 if(session.getAttribute("sousuo") != null)
		 {
		 		temp = session.getAttribute("sousuo").toString();
		 		leibie = temp.substring(0, temp.indexOf("$"));
		 		tiaojie = temp.substring(temp.indexOf("$")+1,temp.length());
		 		
		 		session.setAttribute("sousuo", null);
		 }


	     String dbUrl = "jdbc:mysql://127.0.0.1:3309/medicine_manage";
		 String dbUsr = "root";
  	     String dbPwd = "475356336";
		 Connection conn = null; 	    
   	     String sql = "select * from medicine";
  	     PreparedStatement statement = null;
  	     ResultSet rs = null;
  	     
  	     String sql2 = "select * from device";
  	     PreparedStatement statement2 = null;
  	     ResultSet rs2 = null;
  	     
  	     String sql3 = "select * from book";
  	     PreparedStatement statement3 = null;
  	     ResultSet rs3 = null;
  	     
  	     PreparedStatement statement4 = null;
  	     ResultSet rs4 = null;
  	       	     
  	      
  	     int i = 0;
  	       	      	     
  	     
  	     try
  	     {
  	     		Class.forName("com.mysql.jdbc.Driver");
		 	    conn = DriverManager.getConnection(dbUrl, dbUsr, dbPwd);
		 
		        statement = conn.prepareStatement(sql);
		        rs = statement.executeQuery(sql);
		        
		        statement2 = conn.prepareStatement(sql2);
		        rs2 = statement2.executeQuery(sql2);
		        
		        statement3 = conn.prepareStatement(sql3);
		        rs3 = statement3.executeQuery(sql3);
		        
		        
		        if(leibie != null)
		        {
		        	if(leibie.equals("药品/消耗品"))
		       	 	{	
		        		String sql4 = "select * from medicine where medicine_name = '" +tiaojie+ "'";
		        	
		        		statement4 = conn.prepareStatement(sql4);
		        		rs4 = statement4.executeQuery(sql4);
		      		 }
		        	else if(leibie.equals("设备/器械"))
		        	{
		        		String sql4 = "select * from device where device_name = '" +tiaojie+ "'";
		        	
		        		statement4 = conn.prepareStatement(sql4);
		        		rs4 = statement4.executeQuery(sql4);
		        	}
		     		else if(leibie.equals("图书/期刊"))
		     		{
		     			String sql4 = "select * from book where book_name = '" +tiaojie+ "'";
		     		
		     			statement4 = conn.prepareStatement(sql4);
		        		rs4 = statement4.executeQuery(sql4);
		     		}
		     	}	       

%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>药品管理系统</title>
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
	 	
	 	function select_type()
  		{
  			
  			var type = document.getElementById("select_type").value;
  			
  			
  			switch(type)
  			{
  				case "药品/消耗品": 				
  				//	alert("ok");
  					//document.getElementById("yaopin").style.display = "";
  					document.getElementById("yaopin").style.display = "";
  					document.getElementById("shebei").style.display = "none";
  					document.getElementById("tushu").style.display = "none";
  					
  					
  					document.getElementById("down_left_yaopin").style.display = "";
  					document.getElementById("down_left_shebei").style.display = "none";
  					document.getElementById("down_left_tushu").style.display = "none";
  					
  					document.getElementById("down_right_yaopin").style.display = "";
  					document.getElementById("down_right_shebei").style.display = "none";
  					document.getElementById("down_right_tushu").style.display = "none";
  				//	alert("ok");
  					break;
  				case "设备/器械":
  					document.getElementById("yaopin").style.display = "none";
  					document.getElementById("shebei").style.display = "";
  					document.getElementById("tushu").style.display = "none";
  					
  					document.getElementById("down_left_yaopin").style.display = "none";
  					document.getElementById("down_left_shebei").style.display = "";
  					document.getElementById("down_left_tushu").style.display = "none";
  					
  					document.getElementById("down_right_yaopin").style.display = "none";
  					document.getElementById("down_right_shebei").style.display = "";
  					document.getElementById("down_right_tushu").style.display = "none";
  					break;
  				case "图书/期刊":
  					document.getElementById("yaopin").style.display = "none";
  					document.getElementById("shebei").style.display = "none";
  					document.getElementById("tushu").style.display = "";
  					
  					document.getElementById("down_left_yaopin").style.display = "none";
  					document.getElementById("down_left_shebei").style.display = "none";
  					document.getElementById("down_left_tushu").style.display = "";
  					
  					document.getElementById("down_right_yaopin").style.display = "none";
  					document.getElementById("down_right_shebei").style.display = "none";
  					document.getElementById("down_right_tushu").style.display = "";
  					break;	
  				
  			}
  		}
  		
  		
  		function tianjia_yaopin()
  		{
  			window.showModalDialog('tianjia_yaopin.jsp',window,'');
		
		
		 	window.location.reload();
  		}
  		
  		function look_yaopin(number)
  		{
  			var url = "look_yaopin.jsp" + "?id=" + number;
  			window.showModalDialog(url,window,'');
  			
  			window.location.reload();
  		}
  		
  		function alter_yaopin(number)
  		{
  			var url = "alter_yaopin.jsp" + "?id=" + number;
  			window.showModalDialog(url,window,'');
  			
  			window.location.reload();
  		}
	 	
	 	
	 	function delete_yaopin(number)
	 	{
	 		var url = "delete_yaopin.jsp" + "?id=" + number;
  			window.showModalDialog(url,window,'');
  			
  			window.location.reload();
	 	}
	 	
	 	
	 	
	 	function tianjia_shebei()
  		{
  			window.showModalDialog('tianjia_shebei.jsp',window,'');
		
		
		 	window.location.reload();
  		}
  		
  		
  		function alter_shebei(number)
  		{
  			var url = "alter_shebei.jsp" + "?id=" + number;
  			window.showModalDialog(url,window,'');
  			
  			window.location.reload();
  		}
  		
  		function delete_shebei(number)
	 	{
	 		var url = "delete_shebei.jsp" + "?id=" + number;
  			window.showModalDialog(url,window,'');
  			
  			window.location.reload();
	 	}
	 	
	 	
	 	function look_shebei(number)
  		{
  			var url = "look_shebei.jsp" + "?id=" + number;
  			window.showModalDialog(url,window,'');
  			
  			window.location.reload();
  		}
  		
  		
  		
  		function tianjia_tushu()
  		{
  			window.showModalDialog('tianjia_tushu.jsp',window,'');
		
		
		 	window.location.reload();
  		}
  		
  		
  		function alter_tushu(number)
  		{
  			var url = "alter_tushu.jsp" + "?id=" + number;
  			window.showModalDialog(url,window,'');
  			
  			window.location.reload();
  		}
	 	
	 	
	 	
	 	function delete_tushu(number)
	 	{
	 		var url = "delete_tushu.jsp" + "?id=" + number;
  			window.showModalDialog(url,window,'');
  			
  			window.location.reload();
	 	}
	 	
	 	function look_tushu(number)
  		{
  			var url = "look_tushu.jsp" + "?id=" + number;
  			window.showModalDialog(url,window,'');
  			
  			window.location.reload();
  		}
  		
  		
  		
  		function ff1(number)
  		{  			
  			var id1 = number + "_" + "name";
			var id2 = number + "_" + "guige";
			var id3 = number + "_" + "location";
			var id4 = number + "_" + "shengchanshijian";
			var id5 = number + "_" + "beizhu";
			var id6 = number + "_" + "youxiaoshijian";
			var id7 = number + "_" + "zongshu";
			var id8 = number + "_" + "shengyushuliang";
			var id9 = number + "_" + "lurushijian";
			var id10 = number + "_" + "lururen";
			var id11 = number + "_" + "fuzeren";
			
			document.getElementById('down_right_yaopin_number').value = number;
			document.getElementById('down_right_yaopin_name').value = document.getElementById(id1).value;
			document.getElementById('down_right_yaopin_guige').value = document.getElementById(id2).value;
			document.getElementById('down_right_yaopin_location').value = document.getElementById(id3).value;
			document.getElementById('down_right_yaopin_shengchanshijian').value = document.getElementById(id4).value;
			document.getElementById('down_right_yaopin_beizhu').value = document.getElementById(id5).value;
			document.getElementById('down_right_yaopin_youxiaoshijian').value = document.getElementById(id6).value;
			document.getElementById('down_right_yaopin_zongshu').value = document.getElementById(id7).value;
			document.getElementById('down_right_yaopin_shengyushuliang').value = document.getElementById(id8).value;
			document.getElementById('down_right_yaopin_lurushijian').value = document.getElementById(id9).value;
			document.getElementById('down_right_yaopin_lururen').value = document.getElementById(id10).value;
			document.getElementById('down_right_yaopin_fuzeren').value = document.getElementById(id11).value;
			
	
  		}
  		
  		
  		function ff2(number)
  		{		
  			var id1 = number + "_" + "name";
			var id2 = number + "_" + "xinghao";
			var id3 = number + "_" + "zerenren";
			var id4 = number + "_" + "location";
			var id5 = number + "_" + "shengchantime";
			var id6 = number + "_" + "zhuangtai";
			var id7 = number + "_" + "zongshu";
			var id8 = number + "_" + "shengyushuliang";
			var id9 = number + "_" + "lurushijian";
			var id10 = number + "_" + "lururen";
			
			document.getElementById('down_right_shebei_number').value = number;
			document.getElementById('down_right_shebei_name').value = document.getElementById(id1).value;
			document.getElementById('down_right_shebei_xinghao').value = document.getElementById(id2).value;
			document.getElementById('down_right_shebei_zerenren').value = document.getElementById(id3).value;
			document.getElementById('down_right_shebei_location').value = document.getElementById(id4).value;
			document.getElementById('down_right_shebei_shengchantime').value = document.getElementById(id5).value;
			document.getElementById('down_right_shebei_zhuangtai').value = document.getElementById(id6).value;
			document.getElementById('down_right_shebei_zongshu').value = document.getElementById(id7).value;
			document.getElementById('down_right_shebei_shengyushuliang').value = document.getElementById(id8).value;
			document.getElementById('down_right_shebei_lurushijian').value = document.getElementById(id9).value;
			document.getElementById('down_right_shebei_lururen').value = document.getElementById(id10).value;
  		}
  		
  		
  		function ff3(number)
  		{		
  			var id1 = number + "_" + "name";
			var id2 = number + "_" + "zhonglei";
			var id3 = number + "_" + "zuozhe";
			var id4 = number + "_" + "chubanriqi";
			var id5 = number + "_" + "zongshu";
			var id6 = number + "_" + "shengyushuliang";
			var id7 = number + "_" + "cunfangweizhi";
			var id8 = number + "_" + "lurushijian";
			var id9 = number + "_" + "lururen";
			var id10 = number + "_" + "fuzeren";
			
			document.getElementById('down_right_tushu_number').value = number;
			document.getElementById('down_right_tushu_name').value = document.getElementById(id1).value;
			document.getElementById('down_right_tushu_zhonglei').value = document.getElementById(id2).value;
			document.getElementById('down_right_tushu_zuozhe').value = document.getElementById(id3).value;
			document.getElementById('down_right_tushu_chubanriqi').value = document.getElementById(id4).value;
			document.getElementById('down_right_tushu_zongshu').value = document.getElementById(id5).value;
			document.getElementById('down_right_tushu_shengyushuliang').value = document.getElementById(id6).value;
			document.getElementById('down_right_tushu_cunfangweizhi').value = document.getElementById(id7).value;
			document.getElementById('down_right_tushu_lurushijian').value = document.getElementById(id8).value;
			document.getElementById('down_right_tushu_lururen').value = document.getElementById(id9).value;
			document.getElementById('down_right_tushu_fuzeren').value = document.getElementById(id10).value;
  		}
	 	
	 	
	 </script>
	
	
  </head>
  
  <body>
  	<div style="margin:0 auto;">
    	<div id="sousuo" >
    		<form method="post" action="sousuo.jsp">
    		<center>
    			<select name="leibie" style="width:100px; heigth:30px;">
    				<option>药品/消耗品</option>
    				<option>设备/器械</option>
    				<option>图书/期刊</option>
    			</select>
    			<input name="tiaojie" id="sousuo_in1" type="text" style="width:300px;height:25px;"  />
    			<input id="sousuo_in2" type="submit" value="搜索" style="width:100px;height:30px;"  />
    		</center>
    		</form>
    	</div>
    	<div id="show_sousuo">
    			<% 
    				if(leibie != null)
    				{
    					if(leibie.equals("药品/消耗品"))
    					{
    						int mark=0;
    			%>
    			<table id="yaopin" style="">
    			   <tr> 
						<th scope="col">名称</th> 
						<th scope="col">规格</th> 
						<th scope="col">存放位置</th> 
						<th scope="col">生产日期</th> 
						<th scope="col">有效时间</th>
						<th scope="col">备注</th>
						<th scope="col">总数量</th>
						<th scope="col">剩余数量</th>
						<th scope="col">录入时间</th>
						<th scope="col">录入人</th>
						<th scope="col">负责人</th>
						<th scope="col">查看药品/消耗品借还情况</th>
						<th scope="col">修改药品/消耗品信息</th>
						<th scope="col">删除药品/消耗品记录</th>
					</tr> 
						<% 
							while(rs4.next())
							{
								mark++;
								String number = rs4.getString("number");
						%>
						<tr> 
						<td class="row"><input type="text"  value="<%=rs4.getString("medicine_name") %>" readonly /></td> 
						<td class="row"><input type="text"  value="<%=rs4.getString("medicine_guige") %>" readonly /></td> 
						<td class="row"><input type="text"   value="<%=rs4.getString("medicine_location") %>" readonly /></td> 
						<td class="row"><input type="text" value="<%=rs4.getString("medicine_shengchantime") %>" readonly /></td> 
						<td class="row"><input type="text"  value="<%=rs4.getString("medicine_youxiaotime") %>" readonly /></td> 						
						<td class="row"><input type="text"  value="<%=rs4.getString("medicine_beizhu") %>" readonly /></td> 
						<td class="row"><input type="text"   value="<%=rs4.getString("medicine_shuliang_total") %>" readonly /></td> 
						<td class="row"><input type="text"   value="<%=rs4.getString("medicine_shuliang_rest") %>" readonly /></td> 
						<td class="row"><input type="text"  value="<%=rs4.getString("medicine_jilutime") %>" readonly /></td> 
						<td class="row"><input type="text"   value="<%=rs4.getString("medicine_lurupeople") %>" readonly /></td> 
						<td class="row"><input type="text"  value="<%=rs4.getString("medicine_fuzeren") %>" readonly /></td> 
					    <td class="row"><input type="button" value="查看" onclick="look_yaopin('<%=number %>')" /></td>
					    <td class="row"><input type="button" value="修改" onclick="alter_yaopin('<%=number %>')" /></td>
					    <td class="row"><input type="button" value="删除" onclick="delete_yaopin('<%=number %>')" /></td>
					</tr>
					<% 
						 }
					%>  			
    			</table>
    			<% 
    					 if(mark == 0)
    					 {
    			%>
    			<center><span>查不到记录</span></center>
    			<% 
    					}
    				}
    				else if(leibie.equals("设备/器械"))
    				{
    					int mark=0;
    			%>
    			<table id="yaopin" style="">
    				
    				<tr> 
						<th scope="col">名称</th> 
						<th scope="col">型号</th> 
						<th scope="col">责任人</th> 
						<th scope="col">安放位置</th> 
						<th scope="col">生产日期</th>
						<th scope="col">状态</th>
						<th scope="col">总数量</th>
						<th scope="col">剩余数量</th>
						<th scope="col">录入时间</th>
						<th scope="col">录入人</th>
						<th scope="col">查看设备/器材借还情况</th>
						<th scope="col">修改设备/器材信息</th>
						<th scope="col">删除设备/器材记录</th>
					 </tr> 
					 <% 
							while(rs4.next())
							{
								mark++;
								String number = rs4.getString("number");
					%>
						
					<tr> 
						<td class="row"><input type="text"  value="<%=rs4.getString("device_name") %>" readonly /></td> 
						<td class="row"><input type="text" value="<%=rs4.getString("device_xinghao") %>" readonly /></td> 
						<td class="row"><input type="text"  value="<%=rs4.getString("device_zerenpeople") %>" readonly /></td> 
						<td class="row"><input type="text"  value="<%=rs4.getString("device_location") %>" readonly /></td> 
						<td class="row"><input type="text"  value="<%=rs4.getString("device_shengchantime") %>" readonly /></td> 
						<td class="row"><input type="text"  value="<%=rs4.getString("device_state") %>" readonly /></td> 
						<td class="row"><input type="text" value="<%=rs4.getString("device_shuliang_total") %>" readonly /></td> 
						<td class="row"><input type="text"  value="<%=rs4.getString("device_shuliang_rest") %>" readonly /></td> 
						<td class="row"><input type="text"  value="<%=rs4.getString("device_lurutime") %>" readonly /></td> 
						<td class="row"><input type="text"  value="<%=rs4.getString("device_lurupeople") %>" readonly /></td> 
						<td class="row"><input type="button" value="查看" onclick="look_shebei('<%=number %>')" /></td>
					    <td class="row"><input type="button" value="修改" onclick="alter_shebei('<%=number %>')" /></td>
					    <td class="row"><input type="button" value="删除" onclick="delete_shebei('<%=number %>')" /></td>
					</tr> 
					<% 
					 	}
					%>
    				
    			</table>
    			<% 
    					 if(mark == 0)
    					 {
    			%>
    			<center><span>查不到记录</span></center>
    			<% 
    					 }
    				  }
    				  else if(leibie.equals("图书/期刊"))
    				  {
    				  	   int mark = 0;
    			%>
    			<table id="yaopin" style="">
    					<tr> 
							<th scope="col">名目</th> 
							<th scope="col">种类</th> 
							<th scope="col">发表机构/作者</th> 
							<th scope="col">出版/发表日期</th> 
							<th scope="col">总数量</th>
							<th scope="col">剩余数量</th>
							<th scope="col">存放位置</th>
							<th scope="col">录入时间</th>
							<th scope="col">录入人</th>
							<th scope="col">负责人</th>
							<th scope="col">查看图书/期刊借还情况</th>
							<th scope="col">修改图书/期刊信息</th>
							<th scope="col">删除图书/期刊记录</th>					
						</tr> 
						 <% 
							while(rs4.next())
							{
								mark++;
								String number = rs4.getString("number");
						%>
					<tr> 
						<td class="row"><input type="text" value="<%=rs4.getString("book_name") %>" readonly /></td> 
						<td class="row"><input type="text"  value="<%=rs4.getString("book_zhonglei") %>" readonly /></td> 
						<td class="row"><input type="text" value="<%=rs4.getString("book_zuozhe") %>" readonly /></td> 
						<td class="row"><input type="text"  value="<%=rs4.getString("book_chubantime") %>" readonly /></td> 
						<td class="row"><input type="text"  value="<%=rs4.getString("book_shuliang_total") %>" readonly /></td> 
						<td class="row"><input type="text"  value="<%=rs4.getString("book_shuliang_rest") %>" readonly /></td>
						<td class="row"><input type="text"  value="<%=rs4.getString("book_location") %>" readonly /></td>
						<td class="row"><input type="text"  value="<%=rs4.getString("book_lurutime") %>" readonly /></td>
						<td class="row"><input type="text"  value="<%=rs4.getString("book_lurupeople") %>" readonly /></td>
						<td class="row"><input type="text"  value="<%=rs4.getString("book_fuzeren") %>" readonly /></td>
						<td class="row"><input type="button" value="查看" onclick="look_tushu('<%=number %>')" /></td>
						<td class="row"><input type="button" value="修改" onclick="alter_tushu('<%=number %>')" /></td>
						<td class="row"><input type="button" value="删除" onclick="delete_tushu('<%=number %>')" /></td>
				   </tr> 
				<% 
					}
				%>
				<% 
    					 if(mark == 0)
    					 {
    			%>
    			<center><span>查不到记录</span></center>
    			<% 
    					 }
    				  }
    			  }
    			%>
    			</table>
    	</div>
    	
    	<div id="xuanze">
    		<center>
    		<select id="select_type" style="width:150px;">
    			<option value="药品/消耗品">药品/消耗品</option>
    			<option value="设备/器械">设备/器械</option>
    			<option value="图书/期刊">图书/期刊</option>
    		</select>
    		
    		<input type="button" value="确定" onclick="select_type();" style="width:100px;height:25px;" />
    		</center>   		
    	</div>
    	
    	 <div id="up">
    	 	<div id="yaopin" style="">
        		<table id="mytable" cellspacing="0"> 				
					<tr> 
						<th scope="col">名称</th> 
						<th scope="col">规格</th> 
						<th scope="col">存放位置</th> 
						<th scope="col">生产日期</th> 
						<th scope="col">有效时间</th>
						<th scope="col">备注</th>
						<th scope="col">总数量</th>
						<th scope="col">剩余数量</th>
						<th scope="col">录入时间</th>
						<th scope="col">录入人</th>
						<th scope="col">负责人</th>
						<th scope="col">查看药品/消耗品借还情况</th>
						<th scope="col">修改药品/消耗品信息</th>
						<th scope="col">删除药品/消耗品记录</th>
					</tr> 
					<% 
						while(rs.next())
						{
							String number = rs.getString("number");
							String id1 = number + "_" + "name";
							String id2 = number + "_" + "guige";
							String id3 = number + "_" + "location";
							String id4 = number + "_" + "shengchanshijian";
							String id5 = number + "_" + "beizhu";
							String id6 = number + "_" + "youxiaoshijian";
							String id7 = number + "_" + "zongshu";
							String id8 = number + "_" + "shengyushuliang";
							String id9 = number + "_" + "lurushijian";
							String id10 = number + "_" + "lururen";
							String id11 = number + "_" + "fuzeren";
						
							
					%>
					<tr> 
						<td class="row"><input type="text" id="<%=id1 %>" value="<%=rs.getString("medicine_name") %>" readonly /></td> 
						<td class="row"><input type="text" id="<%=id2 %>" value="<%=rs.getString("medicine_guige") %>" readonly /></td> 
						<td class="row"><input type="text" id="<%=id3 %>"  value="<%=rs.getString("medicine_location") %>" readonly /></td> 
						<td class="row"><input type="text" id="<%=id4 %>" value="<%=rs.getString("medicine_shengchantime") %>" readonly /></td> 
						<td class="row"><input type="text" id="<%=id5 %>" value="<%=rs.getString("medicine_youxiaotime") %>" readonly /></td> 						
						<td class="row"><input type="text" id="<%=id6 %>" value="<%=rs.getString("medicine_beizhu") %>" readonly /></td> 
						<td class="row"><input type="text" id="<%=id7 %>"  value="<%=rs.getString("medicine_shuliang_total") %>" readonly /></td> 
						<td class="row"><input type="text" id="<%=id8 %>"  value="<%=rs.getString("medicine_shuliang_rest") %>" readonly /></td> 
						<td class="row"><input type="text" id="<%=id9 %>"  value="<%=rs.getString("medicine_jilutime") %>" readonly /></td> 
						<td class="row"><input type="text" id="<%=id10 %>"  value="<%=rs.getString("medicine_lurupeople") %>" readonly /></td> 
						<td class="row"><input type="text" id="<%=id11 %>"  value="<%=rs.getString("medicine_fuzeren") %>" readonly /></td> 
					    <td class="row"><input type="button" value="查看" onclick="look_yaopin('<%=number %>')" /></td>
					    <td class="row"><input type="button" value="修改" onclick="alter_yaopin('<%=number %>')" /></td>
					    <td class="row"><input type="button" value="删除" onclick="delete_yaopin('<%=number %>')" /></td>
					</tr> 
					<% 
						}
					%>
				</table> 
				<br>
				<center> <a href="javascript:void(0);" onclick="tianjia_yaopin()">添加药品/消耗品记录</a> </center>
       	 	</div>
       	 	
       	 	<div id="shebei" style="display:none;">
        		<table id="mytable" cellspacing="0"> 
					<tr> 
						<th scope="col">名称</th> 
						<th scope="col">型号</th> 
						<th scope="col">责任人</th> 
						<th scope="col">安放位置</th> 
						<th scope="col">生产日期</th>
						<th scope="col">状态</th>
						<th scope="col">总数量</th>
						<th scope="col">剩余数量</th>
						<th scope="col">录入时间</th>
						<th scope="col">录入人</th>
						<th scope="col">查看设备/器材借还情况</th>
						<th scope="col">修改设备/器材信息</th>
						<th scope="col">删除设备/器材记录</th>
					</tr> 
					<% 
						while(rs2.next())
						{
							String number = rs2.getString("number");
							String id1 = number + "_" + "name";
							String id2 = number + "_" + "xinghao";
							String id3 = number + "_" + "zerenren";
							String id4 = number + "_" + "location";
							String id5 = number + "_" + "shengchantime";
							String id6 = number + "_" + "zhuangtai";
							String id7 = number + "_" + "zongshu";
							String id8 = number + "_" + "shengyushuliang";
							String id9 = number + "_" + "lurushijian";
							String id10 = number + "_" + "lururen";
							
						
							
					%>
					<tr> 
						<td class="row"><input type="text" id="<%=id1 %>" value="<%=rs2.getString("device_name") %>" readonly /></td> 
						<td class="row"><input type="text" id="<%=id2 %>" value="<%=rs2.getString("device_xinghao") %>" readonly /></td> 
						<td class="row"><input type="text" id="<%=id3 %>" value="<%=rs2.getString("device_zerenpeople") %>" readonly /></td> 
						<td class="row"><input type="text" id="<%=id4 %>" value="<%=rs2.getString("device_location") %>" readonly /></td> 
						<td class="row"><input type="text" id="<%=id5 %>" value="<%=rs2.getString("device_shengchantime") %>" readonly /></td> 
						<td class="row"><input type="text" id="<%=id6 %>" value="<%=rs2.getString("device_state") %>" readonly /></td> 
						<td class="row"><input type="text" id="<%=id7 %>" value="<%=rs2.getString("device_shuliang_total") %>" readonly /></td> 
						<td class="row"><input type="text" id="<%=id8 %>" value="<%=rs2.getString("device_shuliang_rest") %>" readonly /></td> 
						<td class="row"><input type="text" id="<%=id9 %>" value="<%=rs2.getString("device_lurutime") %>" readonly /></td> 
						<td class="row"><input type="text" id="<%=id10 %>" value="<%=rs2.getString("device_lurupeople") %>" readonly /></td> 
						<td class="row"><input type="button" value="查看" onclick="look_shebei('<%=number %>')" /></td>
					    <td class="row"><input type="button" value="修改" onclick="alter_shebei('<%=number %>')" /></td>
					    <td class="row"><input type="button" value="删除" onclick="delete_shebei('<%=number %>')" /></td>
					</tr> 
					<% 
					 	}
					%>
				</table> 
				<br>
				<center>
					<a href="javascript:void(0);" onclick="tianjia_shebei()">添加设备/器材记录</a>
				</center>
        	</div>
        	
        	<div id="tushu" style="display:none;">
        	<table id="mytable" cellspacing="0"> 
				<tr> 
					<th scope="col">名目</th> 
					<th scope="col">种类</th> 
					<th scope="col">发表机构/作者</th> 
					<th scope="col">出版/发表日期</th> 
					<th scope="col">总数量</th>
					<th scope="col">剩余数量</th>
					<th scope="col">存放位置</th>
					<th scope="col">录入时间</th>
					<th scope="col">录入人</th>
					<th scope="col">负责人</th>
					<th scope="col">查看图书/期刊借还情况</th>
					<th scope="col">修改图书/期刊信息</th>
					<th scope="col">删除图书/期刊记录</th>
					
				</tr> 
				<% 
					while(rs3.next())
					{
							String number = rs3.getString("number");
							String id1 = number + "_" + "name";
							String id2 = number + "_" + "zhonglei";
							String id3 = number + "_" + "zuozhe";
							String id4 = number + "_" + "chubanriqi";
							String id5 = number + "_" + "zongshu";
							String id6 = number + "_" + "shengyushuliang";
							String id7 = number + "_" + "cunfangweizhi";
							String id8 = number + "_" + "lurushijian";
							String id9 = number + "_" + "lururen";
							String id10 = number + "_" + "fuzeren";
							
						
						
				%>
				<tr> 
					<td class="row"><input type="text" id="<%=id1 %>" value="<%=rs3.getString("book_name") %>" readonly /></td> 
					<td class="row"><input type="text" id="<%=id2 %>" value="<%=rs3.getString("book_zhonglei") %>" readonly /></td> 
					<td class="row"><input type="text" id="<%=id3 %>" value="<%=rs3.getString("book_zuozhe") %>" readonly /></td> 
					<td class="row"><input type="text" id="<%=id4 %>" value="<%=rs3.getString("book_chubantime") %>" readonly /></td> 
					<td class="row"><input type="text" id="<%=id5 %>" value="<%=rs3.getString("book_shuliang_total") %>" readonly /></td> 
					<td class="row"><input type="text" id="<%=id6 %>" value="<%=rs3.getString("book_shuliang_rest") %>" readonly /></td>
					<td class="row"><input type="text" id="<%=id7 %>" value="<%=rs3.getString("book_location") %>" readonly /></td>
					<td class="row"><input type="text" id="<%=id8 %>" value="<%=rs3.getString("book_lurutime") %>" readonly /></td>
					<td class="row"><input type="text" id="<%=id9 %>" value="<%=rs3.getString("book_lurupeople") %>" readonly /></td>
					<td class="row"><input type="text" id="<%=id10 %>" value="<%=rs3.getString("book_fuzeren") %>" readonly /></td>
					<td class="row"><input type="button" value="查看" onclick="look_tushu('<%=number %>')" /></td>
					<td class="row"><input type="button" value="修改" onclick="alter_tushu('<%=number %>')" /></td>
					<td class="row"><input type="button" value="删除" onclick="delete_tushu('<%=number %>')" /></td>
				</tr> 
				<% 
					}
				%>
			</table> 
			<br>
			<center>
				<a href="javascript:void(0);" onclick="tianjia_tushu()">添加图书/期刊记录</a>
			</center>
        </div>
    	 </div>
    	 
    	 <div id="down">
    	 		<div id="down_left">
    	 			<% 
    					rs.beforeFirst();
    					rs2.beforeFirst();
    					rs3.beforeFirst();
    				%>
    				<div id="down_left_yaopin" style="">
    					<ul>
    						<% 
    							while(rs.next())
    							{
    								String number = rs.getString("number");
    								//out.println(number);
    						%>
    						<li><a href="javascript:void(0);" onclick="ff1('<%=number%>');"><%=rs.getString("medicine_name") %></a></li>
    						<% 
    							}
    						%>
    					</ul>
    				</div>
    		
    				<div id="down_left_shebei" style="display:none;">
    					<ul>
    						<% 
    							while(rs2.next())
    							{
    								String number = rs2.getString("number");
    						%>
    						<li><a href="javascript:void(0);" onclick="ff2('<%=number%>')"><%=rs2.getString("device_name") %></a></li>
    						<% 
    							}
    						%>
    					</ul>
    				</div>
    		
    				<div id="down_left_tushu" style="display:none;">
    					<ul>
    						<% 
    							while(rs3.next())
    							{
    								String number = rs3.getString("number");
    						%>
    						<li><a href="javascript:void(0);" onclick="ff3('<%=number%>')"><%=rs3.getString("book_name") %></a></li>
    						<% 
    							}
    						%>
    					</ul>
    				</div>
    	 		</div>
    	 		
    	 		<div id="down_right">
    	 				<div id="down_right_yaopin" style="">
    						<table>
    							<tr>
    								<th>药品/消耗品编号：</th>
    								<td><input type="text" id="down_right_yaopin_number" readonly /></td>
    							
    								<th>药品/消耗品名称：</th>
    								<td><input type="text" readonly id="down_right_yaopin_name" /></td>
    							</tr>
    							<tr>
    								<th>规格：</th>
    								<td><input type="text" readonly id="down_right_yaopin_guige" /></td>    	
    															
    							</tr>
    							<tr>
    								<th>存放位置：</th>
    								<td><input type="text" readonly id="down_right_yaopin_location" /></td>
    							</tr>
    							<tr>
    								<th>生产时间：</th>
    								<td><input type="text" readonly id="down_right_yaopin_shengchanshijian" /></td>
    							
    								<th>有效时间：</th>
    								<td><input type="text" readonly id="down_right_yaopin_youxiaoshijian" /></td>
    							</tr>
    							<tr>
    								<th>备注：</th>
    								<td><input type="text" readonly id="down_right_yaopin_beizhu" /></td>
    							</tr>
    							<tr>
    								<th>药品/消耗品总数：</th>
    								<td><input type="text" readonly id="down_right_yaopin_zongshu" /></td>
    							
    								<th>药品/消耗品剩余数量：</th>
    								<td><input type="text" readonly id="down_right_yaopin_shengyushuliang" /></td>
    							</tr>
    							<tr>
    								<th>药品/消耗品录入人：</th>
    								<td><input type="text" readonly id="down_right_yaopin_lururen" /></td>
    							
    								<th>药品/消耗品录入时间：</th>
    								<td><input type="text" readonly id="down_right_yaopin_lurushijian" /></td>
    							</tr>
    							<tr>
    								<th>药品/消耗品负责人：</th>
    								<td><input type="text" readonly id="down_right_yaopin_fuzeren" /></td>
    							</tr>
    						</table>
    					</div>
    					
    					
    					<div id="down_right_shebei" style="display:none;">
    						<table>
    							<tr>
    								<th>设备/器材编号：</th>
    								<td><input type="text" id="down_right_shebei_number" readonly /></td>
    							
    								<th>设备/器材名称：</th>
    								<td><input type="text" id="down_right_shebei_name" readonly /></td>
    							</tr>
    							<tr>
    								<th>设备/器材型号：</th>
    								<td><input type="text" id="down_right_shebei_xinghao" readonly /></td>
    							</tr>
    							<tr>
    								<th>设备/器材责任人：</th>
    								<td><input type="text" id="down_right_shebei_zerenren" readonly /></td>
    							</tr>
    							<tr>
    								<th>设备/器材安放位置：</th>
    								<td><input type="text" id="down_right_shebei_location" readonly /></td>
    							
    								<th>设备/器材状态：</th>
    								<td><input type="text" id="down_right_shebei_zhuangtai" readonly /></td>
    							</tr>
    							<tr>
    								<th>生产日期：</th>
    								<td><input type="text" id="down_right_shebei_shengchantime" readonly /></td>
    							</tr>
    							<tr>
    								<th>设备/器材总数量：</th>
    								<td><input type="text" id="down_right_shebei_zongshu" readonly /></td>
    							
    								<th>设备/器材剩余数量：</th>
    								<td><input type="text" id="down_right_shebei_shengyushuliang" readonly /></td>
    							</tr>
    							<tr>
    								<th>设备/器材录入时间：</th>
    								<td><input type="text" id="down_right_shebei_lurushijian" readonly /></td>
    							
    								<th>设备/器材录入人：</th>
    								<td><input type="text" id="down_right_shebei_lururen" readonly /></td>
    							</tr>
    						</table>
    					</div>
    					
    					
    					<div id="down_right_tushu" style="display:none;">
    						<table>
    							<tr>
    								<th>图书/期刊编号：</th>
    								<td><input type="text" id="down_right_tushu_number"  readonly /></td>
    								<th>图书/期刊名目：</th>
    								<td><input type="text" id="down_right_tushu_name"  readonly /></td>
    							</tr>
    							<tr>
    								<th>种类：</th>
    								<td><input type="text" id="down_right_tushu_zhonglei"  readonly /></td>
    							</tr>
    							<tr>
    								<th>发表机构/作者：</th>
    								<td><input type="text" id="down_right_tushu_zuozhe"  readonly /></td>
    							
    								<th>出版/发表日期：</th>
    								<td><input type="text" id="down_right_tushu_chubanriqi"  readonly /></td>
    							</tr>
    							<tr>
    								<th>图书/期刊总数量：</th>
    								<td><input type="text" id="down_right_tushu_zongshu"  readonly /></td>
    							
    								<th>图书/期刊剩余数量：</th>
    								<td><input type="text" id="down_right_tushu_shengyushuliang"  readonly /></td>
    							</tr>
    							<tr>
    								<th>图书/期刊存放位置：</th>
    								<td><input type="text" id="down_right_tushu_cunfangweizhi"  readonly /></td>
    							</tr>
    							<tr>
    								<th>图书/期刊录入时间：</th>
    								<td><input type="text" id="down_right_tushu_lurushijian"  readonly /></td>
    							
    								<th>图书/期刊录入人：</th>
    								<td><input type="text" id="down_right_tushu_lururen"  readonly /></td>
    							</tr>
    							<tr>
    								<th>图书/期刊负责人：</th>
    								<td><input type="text" id="down_right_tushu_fuzeren"  readonly /></td>
    							</tr>
    					
    						</table>
    					</div>
    	 		</div>
    	 </div>

<% 
	}catch(Exception e)
	{
		 e.printStackTrace();
	}  
%>

   </div>
    	
  </body>
</html>
