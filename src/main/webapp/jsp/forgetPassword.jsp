<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/5
  Time: 19:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ include file="FrontPage.jsp" %>
<div style="margin: 0px auto;width: 600px;height: 400px;">
    <h1 style="text-align: center;height: 100px;line-height: 100px">找回密码</h1>
    <form class="layui-form" method="post" action="">
        <div class="layui-form-item">
            <label class="layui-form-label">手机号</label>
            <div class="layui-input-inline">
                <input type="text" id="ownerTelephone" name="ownerTelephone" required  lay-verify="required" placeholder="请输入注册时的手机号" autocomplete="off" class="layui-input">
            </div>
            <div class="layui-form-mid layui-word-aux" id="phoneTip"></div>
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
                <button id="submit" class="layui-btn" lay-submit>下一步</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>
</div>
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
                        if(result.ownerPhone!==$("#ownerTelephone").val() || $("#ownerTelephone").val() ===""){
                            $("#phoneTip").html("该手机号尚未被注册");
                            $("#ownerTelephone").val("")
                        }
                    }
                }
            )
        });
        var x = 9999;
        var y = 1000;
        var rand = parseInt(Math.random() * (x - y + 1) + y)+"";
        var a=rand;

        $("#sendMsg").click(function () {
            console.log(a);
           /* $.ajax({
                type:"post",
                url:"http://v.juhe.cn/sms/send?mobile="+$("#ownerTelephone").val()+"&tpl_id=119466&tpl_value=%23code%23%3d"+a+"&key=153247ef229f0573a7759c0b9d2cade6",
                dataType : "json"
            });*/
            $("#writeMsg").blur(function () {
                if(a != $("#writeMsg").val()){
                    alert("验证码错误请重新输入！");
                    $("#writeMsg").val("")
                }
            })
        });
    })
</script>
</body>
</html>
