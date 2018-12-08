<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/5
  Time: 19:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ include file="FrontPage.jsp" %>
<div style="background: url('/pic/Owner.jpg') no-repeat;background-size: cover;height: 800px;">
    <div style="margin: 0px auto;width: 600px;height: 400px;">
        <h1 style="text-align: center;height: 100px;line-height: 100px">找回密码</h1>
        <form class="layui-form" method="post" action="/changePassword">
            <div class="layui-form-item">
                <label class="layui-form-label">修改密码</label>
                <div class="layui-input-inline">
                    <input type="password" id="pass" name="ownerPassword" required lay-verify="required" placeholder="请输入新密码" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-mid layui-word-aux" id="passwordTip">密码必须6到12位，且不能出现空格</div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">确认新密码</label>
                <div class="layui-input-inline">
                    <input type="password" id="passAgain" required lay-verify="required" placeholder="请再次输入新密码" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-mid layui-word-aux" id="passTip"></div>
            </div>
            <input type="hidden" name="ownerTelephone" value="${ownerTelephone}">
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button id="submit" class="layui-btn" lay-submit>确认修改</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>
        <div style="display: none" id="oldPass">${oldPass}</div>
        <div style="display: none" id="ownerTelephone">${ownerTelephone}</div>
    </div>
</div>

<script>
    $(function () {
        console.log($("#oldPass").text()+"========"+$("#ownerTelephone").text());
        $("#pass").blur(function () {
            if($("#pass").val()===$("#oldPass").text()){
                $("#passwordTip").html("新密码不可以与旧密码相同")
                $("#pass").val("");
            }else{
                var patten_pass = /^[0-9a-zA-Z]{6,12}$/;
                $("#pass").blur(function () {
                    var matchResult = patten_pass.test($("#pass").val());
                    if(!matchResult){
                        $("#passwordTip").html("密码不符合格式，请重写");
                        $("#pass").val("")
                    }else {
                        $("#passwordTip").html("可以使用该密码")
                    }
                });
            }
        })
    });

</script>
</body>
</html>
