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
    <style>
        #main {
            height: 800px;
            background: url("/pic/123.jpg") no-repeat;
            background-size: cover;
        }

        #top {
            height: 200px;
        }

        #form {
            width: 350px;
            margin: 0 auto;
        }
    </style>
</head>
<body>
<%@ include file="welcome.jsp" %>
<div id="main">
    <div id="top">
        <div style="font-size: 50px;width: 600px;text-align: center;margin: 0 auto;padding-top: 70px">请修改宠物信息</div>
    </div>
    <form class="layui-form" action="${pageContext.request.contextPath}/updatePet" id="form" method="post">
        <div class="layui-form-item">
            <label class="layui-form-label">宠物编号</label>
            <div class="layui-input-inline">
                <label>
                    <input type="text" name="petId" lay-verify="title" autocomplete="off"
                           value="${requestScope.pet.petId}"
                           class="layui-input" readonly="readonly">
                </label>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">宠物名称</label>
            <div class="layui-input-inline">
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
            </div>
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
