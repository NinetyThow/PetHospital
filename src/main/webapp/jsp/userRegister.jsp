<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/4
  Time: 15:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <title>欢迎来到XX宠物医院</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="../layui/css/layui.css" type="text/css" rel="stylesheet"  media="all"/>
</head>
<body>
<%@ include file="FrontPage.jsp" %>
<div style="background: url('/pic/Owner.jpg') no-repeat;background-size: cover;height: 800px;">

    <div style="margin: 0px auto;width: 600px;height: 400px;">
        <h1 style="text-align: center;height: 100px;line-height: 100px">欢迎注册</h1>
        <form class="layui-form" method="post" action="/registerUser">
            <div class="layui-form-item">
                <label class="layui-form-label">用户名</label>
                <div class="layui-input-inline">
                    <input type="text" id="ownerName" name="ownerName" required  lay-verify="required" placeholder="请输入用户名" autocomplete="off" class="layui-input">
                </div>
                <div id="nameTip" class="layui-form-mid layui-word-aux"></div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">密码框</label>
                <div class="layui-input-inline">
                    <input type="password" id="pass" name="ownerPassword" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-mid layui-word-aux" id="passwordTip">密码必须6到12位，且不能出现空格</div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">确认密码</label>
                <div class="layui-input-inline">
                    <input type="password" id="passAgain" required lay-verify="required" placeholder="请再次输入密码" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-mid layui-word-aux" id="passTip"></div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">手机号</label>
                <div class="layui-input-inline">
                    <input type="text" id="ownerTelephone" name="ownerTelephone" required  lay-verify="required" placeholder="可用于登录和找回密码" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-mid layui-word-aux" id="phoneTip"></div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">城市</label>
                <div class="layui-input-inline">
                    <input type="text" name="ownerCity" required  lay-verify="required" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">地址</label>
                <div class="layui-input-inline">
                    <input type="text" name="ownerAddress" required  lay-verify="required" autocomplete="off" class="layui-input">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">验证码</label>
                <div class="layui-input-inline">
                    <input id="writeMsg" type="text" placeholder="请输入验证码" autocomplete="off" class="layui-input">
                </div>
                <button class="layui-btn" id="sendMsg" onclick="settime(this)" type="button">发送验证码</button>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button id="submit" class="layui-btn" lay-submit>确认注册</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>
    </div>
</div>

<script src="../layui/layui.js" charset="utf-8"></script>
<script src="../js/jquery.js" charset="utf-8"></script>
<script>
    var originTime = 60;
    function settime(obj) {
        if (originTime === 0) {
            $("#sendMsg").removeClass('layui-btn-disabled');
            $("#sendMsg").html("发送验证码");
            originTime = 60;
            return;
        } else {
            $("#sendMsg").addClass('layui-btn-disabled');
            $("#sendMsg").html(originTime +"s后重新发送");
            originTime--;
        }
        setTimeout(function() {
                settime(obj) }
            ,1000)
    }
    $(function () {
        $("#ownerName").focus(function () {
            $("#nameTip").html("中英文均可");
        });
        $("#ownerName").blur(function () {
            $.ajax({
                type:"post",
                dataType : "json",
                contentType:"application/json;charset=utf-8",
                url:"/findAllUsers?ownerName="+$("#ownerName").val(),
                success:function (result) {
                    if(result.owners===$("#ownerName").val() || $("#ownerName").val() ===""){
                        $("#nameTip").html("该用户名已存在，无法使用");
                        $("#ownerName").val("")
                    }else{
                        $("#nameTip").html("该用户名可以使用");
                    }
                }
            })
        });
        $("#ownerTelephone").focus(function () {
            $("#phoneTip").html("仅可输入中国大陆手机号")

        });
        var patten_phone = /^1[3,5,8]\d{9}$/;
        $("#ownerTelephone").blur(function () {
            var matchResult = patten_phone.test($("#ownerTelephone").val());
            if(!matchResult){
                $("#phoneTip").html("手机号码不符合格式");
                $("#ownerTelephone").val("")
            }else{
                $("#phoneTip").html("合法的手机号")
            }
            $.ajax({
                    type:"post",
                    dataType : "json",
                    contentType:"application/json;charset=utf-8",
                    url:"/findOwnerPhone?ownerTelephone="+$("#ownerTelephone").val(),
                    success:function (result) {
                        if(result.ownerPhone===$("#ownerTelephone").val() || $("#ownerTelephone").val() ===""){
                            $("#phoneTip").html("该手机号已被注册，无法使用");
                            $("#ownerTelephone").val("")
                        }
                    }
                }
            )
        });
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
        $("#passAgain").blur(function () {
            if($("#passAgain").val() !== $("#pass").val() || $("#passAgain").val() === ""){
                $("#passTip").html("密码不一致");
                $("#passAgain").val("")
            }else{
                $("#passTip").html("密码验证通过");
            }
        });
        var x = 9999;
        var y = 1000;
        var rand = parseInt(Math.random() * (x - y + 1) + y)+"";
        var a=rand;

        $("#sendMsg").click(function () {
            $.ajax({
                type:"post",
                url:"http://v.juhe.cn/sms/send?mobile="+$("#ownerTelephone").val()+"&tpl_id=119466&tpl_value=%23code%23%3d"+a+"&key=153247ef229f0573a7759c0b9d2cade6",
                dataType : "json"
            });
            $("#writeMsg").blur(function () {
                if(a != $("#writeMsg").val()){
                    alert("验证码错误请重新输入！");
                    $("#writeMsg").val("")
                }
            })
        });
    });
</script>
</body>
</html>
