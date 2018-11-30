<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/30 0030
  Time: 9:38
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
<form class="layui-form" action="/updatePetJsp">
    <div class="layui-form-item">
        <label class="layui-form-label">请输入宠物名称</label>
        <div class="layui-input-block">
            <input type="text" name="petName" lay-verify="title" autocomplete="off" placeholder="请输入宠物名称"
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
        <th>宠物编号</th>
        <th>宠物名称</th>
        <th>宠物生日</th>
        <th>宠物类型</th>
        <th>宠物主人</th>
        <th></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="pets" items="${petsList.datas}">
        <tr>
            <td>${pets.petId}</td>
            <td>${pets.petName}</td>
            <td>${pets.petBirthday}</td>
            <td>${pets.types.typeName}</td>
            <td>${pets.owners.ownerName}</td>
            <td><a href="${pageContext.request.contextPath}/updatePetJsp2?petId=${pets.petId}">
                <button class="layui-btn layui-btn-primary">更新</button>
            </a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<a href="${pageContext.request.contextPath}/updatePetJsp?pageCode=1">
    <button class="layui-btn layui-btn-primary">首页</button>
</a>
<a href="${pageContext.request.contextPath}/updatePetJsp?pageCode=${petsList.pageCode-1}">
    <button class="layui-btn layui-btn-primary">上一页</button>
</a>
<c:forEach begin="1" end="${petsList.allPages}" step="1" var="page">
    <a href="${pageContext.request.contextPath}/updatePetJsp?pageCode=${page}">
        <button class="layui-btn layui-btn-primary">${page}</button>
    </a>
</c:forEach>
<a href="${pageContext.request.contextPath}/updatePetJsp?pageCode=${petsList.pageCode+1}">
    <button class="layui-btn layui-btn-primary">下一页</button>
</a>
<a href="${pageContext.request.contextPath}/updatePetJsp?pageCode=${petsList.allPages}">
    <button class="layui-btn layui-btn-primary">尾页</button>
</a>
</body>
</html>
