<%@ page import="com.sy.pojo.Specialties" %>
<%@ page import="com.sy.controller.OwnersController" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.sy.controller.EmployeesController" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/5 0005
  Time: 14:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<html>
<head>
    <meta charset="utf-8">
    <title>欢迎来到约德尔宠物医院</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="../layui/css/layui.css" type="text/css" rel="stylesheet" media="all"/>

    <style>
        .ny-tab {
            position: relative;
            z-index: 1;
            max-width: 740px;
            margin: 0 auto;
        }

        .inner-wrap {
            width: 100%;
            max-width: 1480px;
            min-width: 320px;
            margin: 0 auto;
            padding: 0 40px;
        }

        .ny-tab .content {
            height: 60px;
            max-width: 660px;
            margin: 0 auto;
            margin-top: -29px;
            background: #ffffff;
            border-radius: 29px;
            text-align: center;
            overflow: hidden;
            text-shadow: 1px 2px 6px #000;
            box-shadow: 10px 5px 2px #888888;
        }

        .Msg {
            text-align: center;
            border-left: 2px solid #eeeeee;
            height: 58px;
            line-height: 58px;
            font-size: 200%;
            /*font-weight: bold;*/
            font-family: "微软雅黑";
        }
    </style>
</head>
<body>


<jsp:include page="FrontPage.jsp"/>
<div style="background-image: url(/pic/story_banner.jpg) ; height: 600px;width: 1920px"></div>

<div class="ny-tab">
    <div class="inner-wrap">
        <div class="content b-shadow clearfix">
            <p class="Msg">网上预约</p>
        </div>
    </div>
</div>

<div style="width:400px;align-content: center;margin: 30px auto">
    <form class="layui-form layui-form-pane" action="/CreateOrders" method="post">
        <div class="layui-form-item">
            <label class="layui-form-label">手机号</label>
            <div class="layui-input-inline">
                <input type="text" name="orderPhone" lay-verify="required" placeholder="必填项"
                       value="${sessionScope.frontPhone}" autocomplete="off" class="layui-input" id="name">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">科室</label>
            <div class="layui-input-inline">
                <select style="height: 32px;width: 150px;float: left" name="specialtyId">
                    <option>--选择科室--</option>
                    <c:forEach var="Specialties" items="${specialties}">
                        <option name="specialty" value=${Specialties.specialtyId}> ${Specialties.specialtyName}</option>
                    </c:forEach>
                </select>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">医师</label>
            <div class="layui-input-inline">
                <select style="height: 32px;width: 150px;float: left" name="specialtyId">
                    <option>--选择科室--</option>

                </select>
            </div>
        </div>

        <div class="layui-inline">
            <label class="layui-form-label">预约日期</label>
            <div class="layui-input-inline">
                <input type="text" name="orderDate" id="date" lay-verify="date" placeholder="yyyy-MM-dd"
                       autocomplete="off" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item" style="text-align: center">
            <button class="layui-btn" lay-submit="" lay-filter="demo2" onclick="checkMsg()">提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </form>
</div>


<script>
    layui.use(['form', 'layedit', 'laydate'], function () {
        var laydate = layui.laydate;
        //日期
        laydate.render({
            elem: '#date'
        });
        laydate.render({
            elem: '#date1'
        });
    });
</script>


</body>
</html>
