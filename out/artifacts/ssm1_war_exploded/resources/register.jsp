<%--
  Created by IntelliJ IDEA.
  User: GUYU
  Date: 2016/12/18
  Time: 22:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />


<html>
<head>
    <title>Title</title>
</head>
<body>
<script>
    function register() {
        var accountName = $("#registerAccountName").val();
        if(accountName == "")
        {
            layer.alert('请输入邮箱', {icon : 5,shift : 6,time : 0});
            $("#registerAccountName").focus();
            return false;
        }else
        {
            var reg = /^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/;
            if(!reg.test(accountName))
            {
                layer.alert('请输入正确的邮箱', {icon : 5,shift : 6,time : 0});
                $("#registerAccountName").focus();
                return false;
            }else
            {
                var flag = true;
                $.ajax({
                    type : "POST",
                    url : sys.rootPath + "/user/validateAccountName.html",
                    data : {
                        "accountName" : accountName
                    },
                    dataType : "json",
                    async : false,
                    success : function(resultdata) {
                        if (!resultdata) {
                            layer.msg("该邮箱已注册,请使用其他邮箱",{icon:5});
                            $("#registerAccountName").focus();
                            flag = false;
                        }
                    },
                    error : function(errorMsg) {
                        layer.msg('服务器未响应,请稍后再试',{icon:2});
                        $("#registerAccountName").focus();
                        flag = false;
                    }
                });
                if(!flag)
                {
                    return flag;
                }
            }
        }
        if($("#registerUserName").val() == "")
        {
            layer.alert('请输入真实姓名', {icon : 5,shift : 6,time : 0});
            $("#registerUserName").focus();
            return false;
        }
        if($("#registerPassword").val() == "")
        {
            layer.alert('请输入密码', {icon : 5,shift : 6,time : 0});
            $("#registerPassword").focus();
            return false;
        }else
        {
            if($("#registerPassword").val().length<6)
            {
                layer.alert('密码长度不能小于6位字符', {icon : 5,shift : 6,time : 0});
                $("#registerPassword").focus();
                return false;
            }
        }
        if($("#registerRePassword").val() == "")
        {
            layer.alert('请输入确认密码', {icon : 5,shift : 6,time : 0});
            $("#registerRePassword").focus();
            return false;
        }
        if($("#registerPassword").val() != $("#registerRePassword").val())
        {
            layer.alert('两次输入密码不一致,请重新输入', {icon : 5,shift : 6,time : 0});
            $("#registerPassword").focus();
            return false;
        }
        $("#registerform").submit();
    }




</script>

<form action="${ctx}/user/add.html" method="post">
    <label>用户名<input type="text" value="" name="UserEntity.username"/></label>
    <label>密码<input type="text" value="" name="UserEntity.password"/></label>
    <label>性别<input type="text" value="" name="UserEntity.sex"/></label>
    <label>生日<input type="text" value="" name="UserEntity.birthday"/></label>
    <label>电话<input type="text" value="" name="UserEntity.telephone"/></label>
    <label>邮箱<input type="text" value="" name="UserEntity.email"/></label>
    <input type="submit" value="提交">

</form>
</body>
</html>
