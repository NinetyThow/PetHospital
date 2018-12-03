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
    <style>
        #main {
            height: 800px;
            background: url("/jsp/123.jpg") no-repeat;
            background-size: cover;
        }

        #top {
            height: 200px;
        }

        #form {
            width: 600px;
            margin: 0 auto;
        }
    </style>
    <script>
        $(function () {
            <%if("success".equals(request.getAttribute("updateMessage"))){%>
            alert('<%=request.getAttribute("updateMessage")%>');
            <%}%>
        })
    </script>
</head>
<body>
<%@ include file="welcome.jsp" %>
<div id="main">
    <div id="top">
        <div style="font-size: 50px;width: 600px;text-align: center;margin: 0 auto;padding-top: 70px">请修改宠物信息</div>
    </div>

    <form class="layui-form" action="${pageContext.request.contextPath}/updatePetJsp" id="form">
        <label class="layui-form-label">宠物名称</label>
        <div class="layui-input-block">
            <input type="text" name="petName" lay-verify="title" autocomplete="off" placeholder="请输入宠物名称"
                   style="height: 38px;width: 400px">
            <button class="layui-btn" lay-submit="" lay-filter="demo1">查找</button>
        </div>
    </form>

    <div style="width: 1000px;margin: 0 auto">
        <table class="layui-table">
            <colgroup>
                <col width="150">
                <col width="200">
                <col>
            </colgroup>
            <thead>
            <tr>
                <th style="text-align: center">宠物编号</th>
                <th style="text-align: center">宠物名称</th>
                <th style="text-align: center">宠物生日</th>
                <th style="text-align: center">宠物类型</th>
                <th style="text-align: center">宠物主人</th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="pets" items="${requestScope.petsList.datas}">
                <tr>
                    <td style="text-align: center">${pets.petId}</td>
                    <td style="text-align: center">${pets.petName}</td>
                    <td style="text-align: center">${pets.petBirthday}</td>
                    <td style="text-align: center">${pets.types.typeName}</td>
                    <td style="text-align: center">${pets.owners.ownerName}</td>
                    <td style="text-align: center"><a href="${pageContext.request.contextPath}/updatePetJsp2?petId=${pets.petId}">
                        <button class="layui-btn layui-btn-primary">更新</button>
                    </a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <div style="margin: 0 auto;width: 600px">
            <a href="${pageContext.request.contextPath}/updatePetJsp?pageCode=1">
                <button class="layui-btn layui-btn-primary">首页</button>
            </a>
            <c:if test="${requestScope.petsList.pageCode>1}">
                <a href="${pageContext.request.contextPath}/updatePetJsp?pageCode=${requestScope.petsList.pageCode-1}">
                    <button class="layui-btn layui-btn-primary">上一页</button>
                </a>
            </c:if>

            <c:forEach begin="1" end="${requestScope.petsList.allPages}" step="1" var="page">
                <a href="${pageContext.request.contextPath}/updatePetJsp?pageCode=${page}">
                    <button class="layui-btn layui-btn-primary">${page}</button>
                </a>
            </c:forEach>

            <c:if test="${requestScope.petsList.pageCode<requestScope.petsList.allPages}">
                <a href="${pageContext.request.contextPath}/updatePetJsp?pageCode=${requestScope.petsList.pageCode+1}">
                    <button class="layui-btn layui-btn-primary">下一页</button>
                </a>
            </c:if>

            <a href="${pageContext.request.contextPath}/updatePetJsp?pageCode=${requestScope.petsList.allPages}">
                <button class="layui-btn layui-btn-primary">尾页</button>
            </a>
        </div>
    </div>
</div>
</body>
</html>
