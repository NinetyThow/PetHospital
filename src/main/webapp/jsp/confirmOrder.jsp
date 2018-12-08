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
    <style>
        th {
            width: 120px;
            text-align: center;
        }

        td {
            text-align: center;
            height: 40px;
        }
    </style>
</head>
<body>
<%@ include file="welcome.jsp" %>
<div style="width: 600px">
    <table class="layui-table">
        <colgroup>
            <col width="150">
            <col width="200">
            <col>
        </colgroup>
        <thead>
        <tr>
            <th>订单编号</th>
            <th>主人名称</th>
            <th>预约时间</th>
            <th>科室名称</th>
            <th>预约状态</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="orders" items="${requestScope.ordersList}">
            <tr>
                <td>${orders.orderId}</td>
                <td>${orders.owners.ownerName}</td>
                <td>${orders.orderDate}</td>
                <td>${orders.specialties.specialtyName}</td>
                <td>${orders.orderStatus}</td>
                <td>
                    <c:if test="${orders.orderStatus eq '已审核'}">
                        已审核
                    </c:if>
                    <c:if test="${orders.orderStatus eq '待审核'}">
                        <a href="${pageContext.request.contextPath}/updateOrderStatus?orderId=${orders.orderId}" class="layui-btn">审核</a>
                    </c:if>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <div style="height: 40px;">
        <a href="${pageContext.request.contextPath}/getOrders?orderStatus=已审核" class="layui-btn" style="float: right">已审核订单信息</a>
        <a href="${pageContext.request.contextPath}/getOrders?orderStatus=待审核" class="layui-btn" style="float: right;margin-right: 10px">待审核订单信息</a>
        <a href="${pageContext.request.contextPath}/getOrders" class="layui-btn" style="float: right">全部订单信息</a>
    </div>
</div>

</body>
</html>
