<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/30 0030
  Time: 10:35
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
<form class="layui-form" action="${pageContext.request.contextPath}/updatePet">
    <div class="layui-form-item">
        <label class="layui-form-label">宠物编号</label>
        <div class="layui-input-block">
            <label>
                <input type="text" name="petId" lay-verify="title" autocomplete="off"
                       value="${requestScope.pet.petId}"
                       class="layui-input">
            </label>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">宠物名称</label>
        <div class="layui-input-block">
            <label>
                <input type="text" name="petName" lay-verify="title" autocomplete="off"
                       value="${requestScope.pet.petName}"
                       class="layui-input">
            </label>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">宠物生日</label>
            <div class="layui-input-inline">
                <label for="date"></label><input type="text" name="petBirthday" id="date" lay-verify="date"
                                                 value="${requestScope.pet.petBirthday}"
                                                 autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">宠物种类</label>
            <div class="layui-input-inline">
                <label>
                    <select name="typeId" lay-verify="required" lay-search="">
                        <option value="${requestScope.pet.typeId}">${requestScope.pet.types.typeName}</option>
                        <c:forEach items="${requestScope.typesList}" var="type">
                            <c:if test="${type.typeId!=requestScope.pet.typeId}">
                                <option value="${type.typeId}">${type.typeName}</option>
                            </c:if>
                        </c:forEach>
                    </select>
                </label>
            </div>
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">宠物主人</label>
            <div class="layui-input-inline">
                <label>
                    <select name="ownerId" lay-verify="required" lay-search="">
                        <option value="${requestScope.pet.ownerId}">${requestScope.pet.owners.ownerName}</option>
                        <c:forEach items="${requestScope.ownersList}" var="owner">
                            <c:if test="${owner.ownerId!=requestScope.pet.ownerId}">
                                <option value="${owner.ownerId}">${owner.ownerName}</option>
                            </c:if>

                        </c:forEach>
                    </select>
                </label>
            </div>
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit="" lay-filter="demo1">更新</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>

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
