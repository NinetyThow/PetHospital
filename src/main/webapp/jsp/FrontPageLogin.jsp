<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/4 0004
  Time: 16:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Title</title>
    <script src="../js/jquery.js" charset="utf-8"></script>
    <script>

    </script>
</head>
<body>
<%@ include file="welcome.jsp" %>

<div style="width: 500px;margin: 0 auto;top: 500px;">
    <form class="layui-form layui-form-pane" action="">
        <div class="layui-form-item">
            <label class="layui-form-label">用户名</label>
            <div class="layui-input-inline">
                <input type="text" name="username" id=""
                       lay-verify="required" placeholder="请输入用户名或手机号码" autocomplete="off" class="layui-input">
            </div>
            <div class="layui-form-mid layui-word-aux">abb</div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">密码</label>
            <div class="layui-input-inline">
                <input type="password" name="password" placeholder="请输入密码" autocomplete="off" class="layui-input">
            </div>
            <div class="layui-form-mid layui-word-aux">abb</div>
        </div>

        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit="" lay-filter="demo1">登录</button>
                <button type="reset" class="layui-btn layui-btn-primary">注册</button>
            </div>
        </div>
    </form>
</div>
</body>
</html>
