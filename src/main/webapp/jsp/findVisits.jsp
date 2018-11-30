<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/30 0030
  Time: 16:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <script src="../js/jquery.js" charset="utf-8"></script>
</head>
<body>
<%@ include file="welcome.jsp" %>
<form class="layui-form" action="/findVisitsJsp">
    <div class="layui-form-item">
        <label class="layui-form-label">请输入宠物名称</label>
        <div class="layui-input-block">
            <input type="text" name="petName" lay-verify="title" autocomplete="off" placeholder="请输入宠物名称或医师名"
                   class="layui-input">
        </div>

        <div class="layui-input-block">
            <button class="layui-btn" lay-submit="" lay-filter="demo1">查找</button>
        </div>
    </div>
</form>

<table class="layui-table">
    <colgroup>
        <col width="150">
        <col width="200">
        <col>
    </colgroup>
    <thead>
    <tr>
        <th>就医编号</th>
        <th>宠物名称</th>
        <th>宠物医师</th>
        <th>就医时间</th>
        <th></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="visit" items="${visitList.datas}">
        <tr>
            <td>${visit.visitId}</td>
            <td>${visit.pets.petName}</td>
            <td>${visit.vets.vetName}</td>
            <td>${visit.visitDate}</td>
            <td><a>
                <button class="layui-btn layui-btn-primary">查看详情</button>
            </a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<a href="${pageContext.request.contextPath}/findVisitsJsp?pageCode=1&petName=${requestScope.q}">
    <button class="layui-btn layui-btn-primary">首页</button>
</a>
<a href="${pageContext.request.contextPath}/findVisitsJsp?pageCode=${requestScope.visitList.pageCode-1}&petName=${requestScope.q}">
    <button class="layui-btn layui-btn-primary">上一页</button>
</a>
<c:forEach begin="1" end="${requestScope.visitList.allPages}" step="1" var="page">
    <a href="${pageContext.request.contextPath}/findVisitsJsp?pageCode=${page}&petName=${requestScope.q}">
        <button class="layui-btn layui-btn-primary">${page}</button>
    </a>
</c:forEach>
<a href="${pageContext.request.contextPath}/findVisitsJsp?pageCode=${requestScope.visitList.pageCode+1}&petName=${requestScope.q}">
    <button class="layui-btn layui-btn-primary">下一页</button>
</a>
<a href="${pageContext.request.contextPath}/findVisitsJsp?pageCode=${requestScope.visitList.allPages}&petName=${requestScope.q}">
    <button class="layui-btn layui-btn-primary">尾页</button>
</a>
</body>
</html>
