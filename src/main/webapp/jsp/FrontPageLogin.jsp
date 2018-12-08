<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/4 0004
  Time: 16:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ include file="FrontPage.jsp" %>

<div style="width: 310px;margin: 0 auto;top: 500px;">
    <div style="height: 100px;text-align: center;font-size: 25px;line-height: 100px">欢 &nbsp;迎  &nbsp;登  &nbsp;录</div>
    <form class="layui-form-pane" action="/session" method="post">
        <div class="layui-form-item">
            <label class="layui-form-label">用户名</label>
            <div class="layui-input-inline">
                <input type="text" name="LoginInfo" id="LoginInfo"
                       lay-verify="required" placeholder="请输入用户名或手机号码" autocomplete="off" class="layui-input">
            </div>
        </div>

        <input type="hidden" name="username" id="hiddenInput">

        <input type="hidden" name="userPhone" id="phoneInput">

        <div style="height: 30px">
            <div style="width: 110px;height:30px;float: left"></div>
            <div id="loginTip" style="float: left;color: red"></div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">密码</label>
            <div class="layui-input-inline">
                <input type="password" name="password" id="password"
                       lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
            </div>
        </div>

        <div style="height: 30px">
            <div style="width: 110px;height:30px;float: left"></div>
            <div style="float: left;color: red" id="passTip"></div>
        </div>

        <div class="layui-form-item">
            <div class="layui-input-block" style="margin-left: 0">
                <button class="layui-btn" lay-submit lay-filter="formDemo" style="width: 300px">登录</button>
            </div>
        </div>

        <div style="width: 300px;height: 30px">
            <div style="float: left"><a href="forgetPassword.jsp">忘记密码</a></div>
            <div style="float: right"><a href="userRegister.jsp">注册</a></div>
        </div>
    </form>

    <script>
        layui.use(['form', 'layedit', 'laydate'], function () {
        });
    </script>
</div>
</body>
<script src="../js/jquery.cookie.js" charset="utf-8"></script>
<script>
    var username;
    var password;

    $(function () {
        $("#LoginInfo").blur(function () {
            if ($("#LoginInfo").val() !== "") {
                $.ajax({
                    type: "POST",
                    data: $("#LoginInfo").val(),
                    contentType: "application/json;charset=utf-8",
                    url: "/frontLogin?LoginInfo",
                    dataType: "json",
                    success: function (data) {
                        if (data.owner === null) {
                            $("#loginTip").html("用户名不存在");
                        } else {
                            $("#loginTip").html("");
                            username = data.owner.ownerName;
                            $("#hiddenInput").attr("value",username);
                            $("#phoneInput").attr("value",data.owner.ownerTelephone);
                            password = data.owner.ownerPassword;
                        }
                    },
                    error: function (jqXHR) {
                        console.log("Error: " + jqXHR.status);
                    }
                })
            }
        });

        $("#password").blur(function () {
            if (password !== $("#password").val() && $("#password").val() !== "") {
                $("#passTip").html("用户名或密码错误");
            } else {
                $("#passTip").html("")
            }
        });

        $("form").submit(function (e) {
            var str = $("#passTip").html() + $("#LoginInfo").html();
            if (str !== "") {
                alert(str);
                e.preventDefault();
            } else {
                $.cookie('username', username);
                $.cookie('password', password);
            }
        })
    })
</script>
</html>
