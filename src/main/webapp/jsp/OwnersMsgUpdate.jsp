<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/29 0029
  Time: 14:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>欢迎来到XX宠物医院</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="../layui/css/layui.css" type="text/css" rel="stylesheet" media="all"/>

</head>
<body>
<jsp:include page="welcome.jsp"/>

<div style="width:400px;align-content: center;margin: 30px auto">
    <form class="layui-form layui-form-pane" action="UpdateOwnerMsg" method="post">
        <div class="layui-form-item">
            <label class="layui-form-label">姓名</label>
            <div class="layui-input-inline">
                <input type="text" name="ownerName" lay-verify="required"  autocomplete="off" class="layui-input" value="${owners.ownerName }">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">地址</label>
            <div class="layui-input-inline">
                <input type="text" name="ownerAddress" lay-verify="required"  autocomplete="off" class="layui-input" value="${owners.ownerAddress }">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">城市</label>
            <div class="layui-input-inline">
                <input type="text" name="ownerCity" lay-verify="required"  autocomplete="off" class="layui-input" value="${owners.ownerCity }">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">手机</label>
            <div class="layui-input-inline">
                <input type="text" name="ownerTelephone" lay-verify="required" autocomplete="off" class="layui-input" value="${owners.ownerTelephone }">
            </div>
        </div>
        <input type="hidden" name="pageCode" value="${pageCode }"/>
        <input type="hidden" name="ownerId" value="${owners.ownerId }"/>
        <div class="layui-form-item" style="text-align: center">
            <button class="layui-btn" lay-submit="" lay-filter="demo2">提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </form>
</div>

</body>
</html>
