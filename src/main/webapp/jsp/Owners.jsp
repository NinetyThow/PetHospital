<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/29 0029
  Time: 15:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>欢迎来到约德尔宠物医院</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="../layui/css/layui.css" type="text/css" rel="stylesheet"  media="all"/>
</head>
<body>

<jsp:include page="welcome.jsp"/>

<div style="background-image: url(../pic/Owner.jpg) ; height: 600px;width: 1920px"></div>

<h1 style="text-align: center; margin: 30px auto;width: 400px">用户信息录入</h1>
<div style="width:400px;align-content: center;margin: 30px auto">
<form class="layui-form layui-form-pane" action="/CreateOwner" method="post">
    <div class="layui-form-item">
        <label class="layui-form-label">用户名</label>
        <div class="layui-input-inline">
            <input type="text" name="ownerName" lay-verify="required" placeholder="必填项" autocomplete="off" class="layui-input" id="name">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">密码</label>
        <div class="layui-input-inline">
            <input type="password" name="ownerPassword" lay-verify="required" placeholder="必填项" autocomplete="off" class="layui-input" id="password">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">确认密码</label>
        <div class="layui-input-inline">
            <input type="password" name="ownerPassword" lay-verify="required" placeholder="确认密码" autocomplete="off" class="layui-input" id="checkpassword" onblur="checkPassword()">
            <p style="color:red;display: none" id="Msgpasswrod" >两次输入的密码不相同，请确认</p>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">地址</label>
        <div class="layui-input-inline">
            <input type="text" name="ownerAddress" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">城市</label>
        <div class="layui-input-inline">
            <input type="text" name="ownerCity" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">手机</label>
        <div class="layui-input-inline">
            <input type="text" name="ownerTelephone" lay-verify="required" placeholder="必填项" autocomplete="off" class="layui-input" id="phone" onblur="checkPhone()" >
            <p style="color:red;display: none" id="Msg" >手机号码有误，请重填</p>
        </div>
    </div>

    <div class="layui-form-item" style="text-align: center">
        <button class="layui-btn" lay-submit="" lay-filter="demo2" onclick="checkMsg()">提交</button>
        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
</form>
</div>

<script src="../layui/layui.js" charset="utf-8"></script>
<script src="../js/jquery.js" charset="utf-8"></script>
<script src="//res.layui.com/layui/dist/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->

<script>

    function checkPhone(){
        var phone = document.getElementById('phone').value;
        var content =document.getElementById('Msg');
        if(!(/^1[34578]\d{9}$/.test(phone))){
            content.style.display="block";
        }else{
            content.style.display="none";
        }
    }
    function checkPassword(){
        var password = document.getElementById('password').value;
        var checkpassword =document.getElementById('checkpassword').value;

        var Msgpasswrod =document.getElementById('Msgpasswrod');
        if(password!=checkpassword){
            Msgpasswrod.style.display="block";
        }else{
            Msgpasswrod.style.display="none";
        }
    }
    function checkMsg() {
        var name=document.getElementById('name').value;
        var phone=document.getElementById('phone').value;
        var password = document.getElementById('password').value;
        if(phone==null||name==null||password==null){
            alert("用户名或手机号不能为空！！");
            return false;
        }
    }

</script>

</body>

</html>
