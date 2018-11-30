<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/30
  Time: 9:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>欢迎来到XX宠物医院</title>
</head>
<body>
<%@ include file="welcome.jsp" %>
<div>
    <table class="layui-table" style="width: 470px;margin: 20px auto">
        <colgroup>
            <col width="150">
            <col width="200">
            <col width="120">
        </colgroup>
        <thead>
        <tr align="center">
            <th>医生ID</th>
            <th>医生姓名</th>
            <th>医师详情</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="Vets" items="${PageBean.datas }">
            <tr align="center">
                <td>${Vets.vetId }</td>
                <td>${Vets.vetName }</td>
                <td><button class="layui-btn">点击查看</button></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<div style="align-content: center;width: 280px; margin: 10px auto">
    <a href="queryVets?pageCode=1">
        <button class="layui-btn layui-btn-sm">首页</button>
    </a>
    <c:if test="${PageBean.pageCode>1 }">
        <a href="queryVets?pageCode=${PageBean.pageCode-1 }">
            <button class="layui-btn layui-btn-sm">上一页</button>
        </a>
    </c:if>
    <c:forEach var="pageCode" begin="1" end="${PageBean.allPages }" step="1">
        <a href="queryVets?pageCode=${pageCode }">
            <button class="layui-btn layui-btn-sm">${pageCode}</button>
        </a>
    </c:forEach>
    <c:if test="${PageBean.pageCode<PageBean.allPages }">
        <a href="queryVets?pageCode=${PageBean.pageCode+1 }">
            <button class="layui-btn layui-btn-sm">下一页</button>
        </a>
    </c:if>
    <a href="queryVets?pageCode=${PageBean.allPages }">
        <button class="layui-btn layui-btn-sm">末页</button>
    </a>
</div>
</body>
</html>
