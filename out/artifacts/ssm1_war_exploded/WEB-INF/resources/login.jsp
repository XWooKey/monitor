<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Login</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript">
			 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
		</script>
		<script src="js/jquery/jQuery-2.2.0.min.js"></script>
		<meta name="keywords"
			content="Flat Dark Web Login Form Responsive Templates, Iphone Widget Template, Smartphone login forms,Login form, Widget Template, Responsive Templates, a Ipad 404 Templates, Flat Responsive Templates" />
		<link href="css/style.css" rel='stylesheet' type='text/css' />
		<!--webfonts-->

		<!--  	
<link
	href='http://fonts.useso.com/css?family=PT+Sans:400,700,400italic,700italic|Oswald:400,300,700'
	rel='stylesheet' type='text/css'>
	<link href='http://fonts.useso.com/css?family=Exo+2' rel='stylesheet'
		type='text/css'>
	
		<script
			src="http://ajax.useso.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>

-->
</head>
<body>
	<script>
		var sys = sys || {};
		sys.rootPath = "${ctx}";

		$(document).ready(function(c) {
			$('.close').on('click', function(c) {
				$('.login-form').fadeOut('slow', function(c) {
					$('.login-form').remove();
				});
			});
		});

		function login() {

			var options = {
				url : sys.rootPath + "/user/login.html",
				type : 'post',
				dataType : 'json',
				data : $("#loginForm").serialize(),
				success : function(data) {
					console.log(data);
					$("#statu").html(data.statu);
					if(data.statu=="登陆成功")
					{
						 window.location.href =sys.rootPath + "/index.html";
					}
					
					
				},
				error : function(data, errorThrown) {
					console.log(data);
					//alert("error" + data.responseText); 
				}
			};
			$.ajax(options);

			//$("#loginForm").submit();
		}
	</script>
	<!--SIGN UP-->
	<h1>Login</h1>
	<div class="login-form">
		<div class="close"></div>
		<div class="head-info">
			<label class="lbl-1"> </label> <label class="lbl-2"> </label> <label
				class="lbl-3"> </label>
		</div>
		<div class="clear"></div>
		<div class="avtar">
			<img src="images/avtar.png" />
		</div>
		<form action="${ctx}/user/login.html" id="loginForm" method="post">
			<input type="text" placeholder="username" class="text"
				name="username">
				<div class="key">
					<input type="password" placeholder="password" name="password">
				</div>
		</form>
		<div class="signin">
			<input type="submit" value="Login" onclick="login()">
		</div>
	</div>
	<div class="copy-rights">
		<p id="statu"></p>

		<p>
			<a href="${ctx}/register.html">注册用户</a>
		</p>
		<p>Copyright &copy; 2015.Company name All rights reserved.</p>
	</div>

</body>
</html>