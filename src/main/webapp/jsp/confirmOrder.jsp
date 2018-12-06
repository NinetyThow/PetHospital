<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/5 0005
  Time: 20:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <meta charset="UTF-8">
    <script src="../js/jquery.js" charset="utf-8"></script>
</head>
<body>
<%@ include file="welcome.jsp" %>
<div style="width: 600px">
    <table class="layui-hide" id="test" lay-filter="test"></table>
</div>

<script type="text/html" id="toolbarDemo">
    <div class="layui-btn-container">
        <button class="layui-btn layui-btn-sm" id="All">获取全部数据</button>
        <button class="layui-btn layui-btn-sm" id="isCheck">获取未审核数据</button>
        <button class="layui-btn layui-btn-sm" id="notCheck">获取已审核数据</button>
    </div>
</script>

<script>
    var orderStatus;
    $("#All").click(function () {
        orderStatus='';
    });

    $("#isCheck").click(function () {
        orderStatus='已审核';
    });



    layui.use('table', function () {
        var table = layui.table;
        $("#notCheck").click(function () {
            orderStatus='待审核';
        });
        table.render({
            elem: '#test'
            , url: '/getOrders?orderStatus=待审核'
            , toolbar: '#toolbarDemo'
            , title: '用户数据表'
            , totalRow: true
            , cols: [[
                {field: 'orderId', title: 'ID', width: 120, fixed: 'left', unresize: true, sort: true}
                , {field: 'ownerName', title: '主人名称', width: 120, templet: '<div>{{d.owners.ownerName}}</div>'}
                , {field: 'orderDate', title: '预约时间', width: 120, sort: true}
                , {
                    field: 'specialtyName',
                    title: '科室名称',
                    width: 120,
                    sort: true,
                    templet: '<div>{{d.specialties.specialtyName}}</div>'
                }
                , {field: 'orderStatus', title: '预约状态', width: 120, sort: true}
            ]]
            , page: true
        });
    });
</script>
</body>
</html>
