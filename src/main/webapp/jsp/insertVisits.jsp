<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/30 0030
  Time: 14:46
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
<form class="layui-form" action="${pageContext.request.contextPath}/insertVisit" method="post">
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">宠物名称</label>
            <div class="layui-input-inline">
                <label>
                    <select name="petId" lay-verify="required" lay-search="">
                        <option value="">直接选择或搜索选择</option>
                        <c:forEach items="${requestScope.petsList}" var="pet">
                            <option value="${pet.petId}">${pet.petName}</option>
                        </c:forEach>
                    </select>
                </label>
            </div>
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">兽医姓名</label>
            <div class="layui-input-inline">
                <label>
                    <select name="vetId" lay-verify="required" lay-search="">
                        <option value="">直接选择或搜索选择</option>
                        <c:forEach items="${requestScope.vetsList}" var="vet">
                            <option value="${vet.vetId}">${vet.vetName}</option>
                        </c:forEach>
                    </select>
                </label>
            </div>
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">就医时间</label>
            <div class="layui-input-inline">
                <input type="text" name="visitDate" id="date" lay-verify="date" placeholder="请输入就医时间"
                       autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>

    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">就医描述</label>
        <div class="layui-input-block">
            <textarea placeholder="请输入内容" class="layui-textarea" name="description"></textarea>
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit="" lay-filter="demo1">添加</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>

<script>
    layui.use(['form', 'layedit', 'laydate'], function(){
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
