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
</head>
<body>
<%@ include file="welcome.jsp" %>
<div id="main">
    <div id="top">
        <div style="font-size: 50px;width: 600px;text-align: center;margin: 0 auto;padding-top: 70px">欢迎来到就医信息</div>
    </div>
    <form class="layui-form" action="${pageContext.request.contextPath}/findVisitsJsp" id="form">
        <div class="layui-form-item">
            <label class="layui-form-label">输入关键字</label>
            <div class="layui-input-block">
                <input type="text" name="petName" lay-verify="title" autocomplete="off" placeholder="请输入宠物名称或医师名"
                       style="height: 38px;width: 400px">
                <button class="layui-btn" lay-submit="" lay-filter="demo1">查找</button>
            </div>
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
                <th style="text-align: center">就医编号</th>
                <th style="text-align: center">宠物名称</th>
                <th style="text-align: center">宠物医师</th>
                <th style="text-align: center">就医时间</th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="visit" items="${requestScope.visitList.datas}">
                <tr>
                    <td style="text-align: center">${visit.visitId}</td>
                    <td style="text-align: center">${visit.pets.petName}</td>
                    <td style="text-align: center">${visit.vets.vetName}</td>
                    <td style="text-align: center">${visit.visitDate}</td>
                    <td style="text-align: center">
                        <a >
                        <button class="layui-btn layui-btn-primary">查看详情</button>
                        </a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>

        <div style="margin: 0 auto;width: 600px">
            <a href="${pageContext.request.contextPath}/findVisitsJsp?pageCode=1&petName=${requestScope.q}">
                <button class="layui-btn layui-btn-primary">首页</button>
            </a>

            <c:if test="${requestScope.visitList.pageCode>1}">
                <a href="${pageContext.request.contextPath}/findVisitsJsp?pageCode=${requestScope.visitList.pageCode-1}&petName=${requestScope.q}">
                    <button class="layui-btn layui-btn-primary">上一页</button>
                </a>
            </c:if>

            <c:forEach begin="1" end="${requestScope.visitList.allPages}" step="1" var="page">
                <a href="${pageContext.request.contextPath}/findVisitsJsp?pageCode=${page}&petName=${requestScope.q}">
                    <button class="layui-btn layui-btn-primary">${page}</button>
                </a>
            </c:forEach>

            <c:if test="${requestScope.visitList.pageCode<requestScope.visitList.allPages}">
                <a href="${pageContext.request.contextPath}/findVisitsJsp?pageCode=${requestScope.visitList.pageCode+1}&petName=${requestScope.q}">
                    <button class="layui-btn layui-btn-primary">下一页</button>
                </a>
            </c:if>

            <a href="${pageContext.request.contextPath}/findVisitsJsp?pageCode=${requestScope.visitList.allPages}&petName=${requestScope.q}">
                <button class="layui-btn layui-btn-primary">尾页</button>
            </a>
        </div>
    </div>
</div>
</body>

</html>
