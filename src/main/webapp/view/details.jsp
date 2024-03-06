<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
/*获取项目的根路径*/
String path = request.getContextPath();
String basePath = request.getScheme()+"://" + request.getServerName()+":"+request.getServerPort()+path+"/";
/*basePath就是得到的跟路径类似于：http://localhost:8081/test/*/
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>领养详情</title>
    <link rel="stylesheet" href="../css/details.css">
    <link rel="stylesheet" href="../layui/css/layui.css">
    <script src="<%=basePath%>/js/jquery-3.6.3.min.js"></script>
</head>
<body>
<div class="main">
    <%@ include file="top.jsp"%>
    <div class="bgup">
        <img src="<%=basePath%>/img/detail3.jpg" style="width: 100%;height: 100%; object-fit: cover;">
    </div>
    <div class="info">
        <div class="photo">
            <img src="<%=basePath%>/img/${pet.image}" style="width: 100%;height: 100%; object-fit: cover;">
        </div>
        <div class="information">
            <span style="font-size: 22px;">${pet.name}</span><br><br>
            <span style="font-size: 12px;">年&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp龄:&nbsp&nbsp&nbsp&nbsp${pet.age}</span><br>
            <span style="font-size: 12px;">性&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp别:&nbsp&nbsp&nbsp&nbsp${pet.gender}</span><br>
            <span style="font-size: 12px;">体&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp型:&nbsp&nbsp&nbsp&nbsp${pet.size}</span><br>
            <span style="font-size: 12px;">品&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp种:&nbsp&nbsp&nbsp&nbsp${pet.breed}</span><br><br>
            <span style="font-size: 12px;">领养须知:&nbsp&nbsp&nbsp&nbsp${pet.notice}</span><br>
            <input type="button" class="adoption" value="我要领养">
            <input type="button" class="help" value="我要助养">
        </div>
    </div>
</div>
</body>
<script>
    var id='${pet.id}';
</script>
</html>