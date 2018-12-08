<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/30 0030
  Time: 9:24
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
            height: 500px;
            width: 500px;
            margin: 0 auto;
        }
    </style>
</head>
<body>
<%@ include file="welcome.jsp" %>
<div id="main">
    <div id="top">
        <div style="font-size: 50px;width: 600px;text-align: center;margin: 0 auto;padding-top: 70px">请填写宠物信息</div>
    </div>
    <form class="layui-form" action="${pageContext.request.contextPath}/insertPet" id="form" method="post"
          enctype="multipart/form-data">
        <div class="layui-form-item">
            <label class="layui-form-label" style="width: 150px">宠物名称</label>
            <div class="layui-input-inline">
                <input type="text" name="petName" lay-verify="title" autocomplete="off" placeholder="请输入宠物名称"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label" style="width: 150px">宠物生日</label>
                <div class="layui-input-inline">
                    <input type="text" name="petBirthday" id="date" lay-verify="date" placeholder="请输入宠物生日"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>

        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label" style="width: 150px">宠物种类</label>
                <div class="layui-input-inline">
                    <label>
                        <select name="typeId" lay-verify="required" lay-search="">
                            <option value="">直接选择或搜索选择</option>
                            <c:forEach items="${requestScope.typesList}" var="type">
                                <option value="${type.typeId}">${type.typeName}</option>
                            </c:forEach>
                        </select>
                    </label>
                </div>
            </div>
        </div>

        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label" style="width: 150px">宠物主人</label>
                <div class="layui-input-inline">
                    <label>
                        <select name="ownerId" lay-verify="required" lay-search="">
                            <option value="">直接选择或搜索选择</option>
                            <c:forEach items="${requestScope.ownersList}" var="owner">
                                <option value="${owner.ownerId}">${owner.ownerName}</option>
                            </c:forEach>
                        </select>
                    </label>
                </div>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label" style="width: 150px">宠物照片</label>
            <div class="layui-input-inline">
                <input type="file" value="上传头像" name="file1" style="height: 30px;line-height: 30px">
            </div>
        </div>

        <div class="layui-form-item">
            <div class="layui-input-block" style="padding-left: 50px">
                <button class="layui-btn" lay-submit="" lay-filter="demo1">添加</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
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
