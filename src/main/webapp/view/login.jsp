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
    <title>login</title>
    <link rel="stylesheet" href="<%=basePath%>/css/login.css">
    <link rel="stylesheet" href="<%=basePath%>/layui/css/layui.css">
    <script src="<%=basePath%>/layui/layui.js"></script>
</head>
<body>
<div class="main">
    <img src="<%=basePath%>/img/loginimg.jpg" style="width: 100%;height: 100%;object-fit: cover;">
    <div class="loginBox">
        <div class="formtext">
            <div style="text-align: center;"><h2>Login</h2></div>
            <form class="loginForm" action="#" onsubmit="return false">
                <div class="inputBox">
                    <input type="text" class="userName" name="userName" required="">
                    <label>用户名</label>
                </div>
                <div class="inputBox">
                    <input type="password" class="password" name="password" required="">
                    <label>密码</label>
                </div>
                <input type="submit" class="login" value="登录">
                <input type="button" value="注册" onclick='window.open("<%=basePath%>/view/register.jsp")'>
            </form>
        </div>
    </div>
</div>
<script>
    layui.use(['jquery'],function (){
        var $=layui.jquery;
        //点击登录
        $(".login").click(function () {
            //前端访问后端，并发送请求
            $.ajax({
                url:"<%=basePath%>/login",//请求的地址
                data:$(".loginForm").serialize(),//请求的参数
                success:function (result) {//result访问后台成功后得到的数据
                    console.log(result)
                    if(result){
                        layer.msg('登录成功', {
                            icon: 1,
                            time: 2000 //2秒关闭（如果不配置，默认是3秒）
                        }, function(){
                            //当你在iframe页面关闭自身时
                            var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
                            parent.layer.close(index); //再执行关闭
                            //关闭窗口后，需要刷新一次top页面
                            parent.window.location.reload();
                        });
                    }else {
                        layer.msg("账户密码错误")
                    }
                }
            })
        })
    })
</script>
</body>
</html>