<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/30
  Time: 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ include file="welcome.jsp" %>
<div style="background-image: url(/pic/about_banner.jpg) ; height: 600px;width: 1920px"></div>
<div style="margin: 20px auto;width: 600px;height: 400px">
    <form class="layui-form" method="post" action="/addNewVet">
        <div class="layui-form-item">
            <label class="layui-form-label">医师姓名</label>
            <div class="layui-input-inline">
                <input type="text" name="vetName" required  lay-verify="required" placeholder="请输入医师姓名" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">复选框</label>
            <div class="layui-input-block">
                <c:forEach items="${specialties}" var="sp">
                    <input type="checkbox" name="specialtyId" value=${sp.specialtyId} title=${sp.specialtyName}>
                </c:forEach>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>
</div>

<script>
    //Demo
    layui.use('form', function(){
        var form = layui.form;
    });

</script>
</body>
</html>
