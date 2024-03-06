<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>top</title>
    <link rel="stylesheet" href="<%=basePath%>/css/top.css">
    <link rel="stylesheet" href="<%=basePath%>/layui/css/layui.css">
    <script src="<%=basePath%>/layui/layui.js"></script>
</head>
<body>
<div class="top">
    <div class="login">
    <div class="logo">
        <img src="<%=basePath%>/img/logo1.png" style="width: 100%;height: 100%; object-fit: cover;">
    </div>
    <div class="log">
        <c:if test="${sessionScope.user==null}">
            <span class="login-left">登录</span>
            <span>|</span>
            <span class="register-right">注册</span>
        </c:if>
        <c:if test="${sessionScope.user!=null}">
            <span>欢迎：${sessionScope.user.userName}</span>
            <span class="loginOut" style="margin-left: 15px;color:#8ed38e">登出</span>
        </c:if>
    </div>
</div>
    <div class="nav">
        <ul>
            <li><a href="http://localhost:8080/PetLand_war_exploded/">HOME<br>首页</a></li>
            <li><a href="../view/community.html">COMMUNITY<br>社区</a></li>
            <li><a href="../view/adoption.html">DOGS & CATS<br>汪&喵</a></li>
            <li><a href="https://www.moguvet.com/">HOSIPITAL<br>问诊</a></li>
            <li><a href="../view/individual.html">INDIVIDUAL CENTER<br>个人中心</a></li>
            <li><a href="../view/shop.html">SHOP<br>公益商店</a></li>
        </ul>
    </div>
</div>

<script>
    //初始化
    layui.use(['jquery'],function (){
        //组件初始化
        var $=layui.jquery;
        //点击登录按钮
        $(".login-left").click(function (){
            //打开登录窗口
            layer.open({
                type: 2,
                title: 'Login',
                area: ['100%', '100%'],
                content: 'view/login.jsp'
            });
        })
        //点击注册按钮
        $(".register-right").click(function (){
            //打开注册窗口
            layer.open({
                type: 2,
                title: 'Register',
                area: ['100%', '100%'],
                content: 'view/register.jsp'
            });
        })
        //注销
        $(".loginOut").click(function () {
            layer.confirm('确定退出登录?', function(index){
                //do something
                $.ajax({
                    url:"<%=basePath%>/loginOut",
                    success:function (result) {
                        if(result){
                            layer.msg("退出成功",{
                                icon:1,
                                time:2000
                            },function (){
                                layer.close(index);
                                window.location.reload();
                            })
                        }else {
                            layer.msg("退出失败");
                        }
                    }
                })
            });
        })
    })
</script>
</body>
</html>