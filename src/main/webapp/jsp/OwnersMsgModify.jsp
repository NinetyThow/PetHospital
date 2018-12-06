<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/6 0006
  Time: 14:15
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

    <style>
        .ny-tab{
            position:relative;
            z-index:1;
            max-width:740px;
            margin: 0 auto;
        }
        .inner-wrap{
            width: 100%;
            max-width: 1480px;
            min-width: 320px;
            margin: 0 auto;
            padding: 0 40px;
        }
        .ny-tab .content{
            height: 60px;
            max-width: 660px;
            margin: 0 auto;
            margin-top: -29px;
            background: #ffffff;
            border-radius: 29px;
            text-align: center;
            overflow: hidden;
            text-shadow:1px 2px 6px #000;
            box-shadow: 10px 5px 2px #888888;
        }
        .Msg{
            text-align: center;
            border-left: 2px solid #eeeeee;
            height: 58px;
            line-height: 58px;
            font-size:200%;
            /*font-weight: bold;*/
            font-family:"微软雅黑";
        }
    </style>

</head>
<body>

<jsp:include page="FrontPage.jsp"/>
<div style="background-image: url(/pic/talent_banner.jpg) ; height: 600px;width: 1920px"></div>

<div class="ny-tab">
    <div class="inner-wrap">
        <div class="content b-shadow clearfix">
            <p class="Msg">信息修改</p>
        </div>
    </div>
</div>

<div style="width:400px;align-content: center;margin: 30px auto">
    <form class="layui-form layui-form-pane" action="/CreateOwner" method="post">
        <div class="layui-form-item">
        <label class="layui-form-label">手机</label>
            <div class="layui-input-inline">
                <input type="text" name="ownerTelephone" lay-verify="required" placeholder="必填项" autocomplete="off" class="layui-input" id="phone" readonly="readonly" value="${owners.ownerTelephone}" >
                <%--<p style="color:red;display: none" id="Msg" >手机号码有误，请重填</p>--%>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">用户名</label>
            <div class="layui-input-inline">
                <input type="text" name="ownerName" lay-verify="required" placeholder="必填项" autocomplete="off" class="layui-input" id="name" value="${owners.ownerName}">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">地址</label>
            <div class="layui-input-inline">
                <input type="text" name="ownerAddress" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input" value="${owners.ownerAddress}">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">城市</label>
            <div class="layui-input-inline">
                <input type="text" name="ownerCity" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input" value="${owners.ownerCity}">
            </div>
        </div>

        <div class="layui-form-item" style="text-align: center">
            <button class="layui-btn" lay-submit="" lay-filter="demo2" onclick="checkMsg()">提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </form>
</div>



</body>
</html>
