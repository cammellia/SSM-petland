<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    /*获取项目的根路径*/
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://" + request.getServerName()+":"+request.getServerPort()+path+"/";
    /*basePath就是得到的跟路径类似于：http://localhost:8081/test/*/
%>
<html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>register</title>
    <link rel="stylesheet" href="<%=basePath%>/css/register.css">
</head>
<body>
<div class="main">
    <img src="<%=basePath%>/img/loginimg.jpg" style="width: 100%;height: 100%;object-fit: cover;">
    <div class="registerBox">
        <div class="formtext">
            <div style="text-align: center;"><h2>Register</h2></div>
            <form class="registerForm" action="#" onsubmit="return false">
                <div class="inputBox">
                    <input type="text" class="userName" name="userName" required="">
                    <label>用户名</label>
                </div>
                <div class="inputBox">
                    <input type="password" class="password" name="password" required="">
                    <label>密码</label>
                </div>
                <div class="inputBox">
                    <input type="password" class="repassword" name="repassword" required="">
                    <label>确认密码</label>
                </div>
                <div class="inputBox">
                    <input type="text" class="phone" name="phone" required="">
                    <label>手机</label>
                </div>
                <input type="submit" class="register" value="注册">
                <input type="reset" class="" value="重置">
            </form>
        </div>
    </div>
</div>
</body>

</html>