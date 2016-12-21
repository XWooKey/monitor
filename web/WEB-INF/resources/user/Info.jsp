<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Info.jsp' starting page</title>
    
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
   	 用户名:			${sessionScope.user.username}	<br/>
	 密码：  			${sessionScope.user.password}	<br/>
   	性别: 			${sessionScope.user.sex}		<br/>
  	生日:  			${sessionScope.user.birthday}	<br/>
  	创建日期:  		${sessionScope.user.telephone}	<br/>
 	电子邮件:   		${sessionScope.user.email}		<br/>
 	注册日期:   		${sessionScope.user.createtime}	<br/>
 	最后一次修改时间:   	${sessionScope.user.updatetime}	<br/>
 	所属角色:   		${sessionScope.user.role.name}	<br/>
  </body>
</html>
