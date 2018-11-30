<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/29 0029
  Time: 16:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="utf-8">
    <title>欢迎来到XX宠物医院</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="../layui/css/layui.css" type="text/css" rel="stylesheet" media="all"/>
</head>
<body>
<jsp:include page="welcome.jsp"/>

<div>
    <table class="layui-table">
        <thead>
        <tr align="center">
            <th>ID</th>
            <th>姓名</th>
            <th>地址</th>
            <th>城市</th>
            <th>手机号</th>
            <th>操作</th>
        </tr>
        </thead>
        <c:forEach var="Owners" items="${pageBean.datas }">
            <tr align="center">
                <td>${Owners.ownerId }</td>
                <td>${Owners.ownerName }</td>
                <td>${Owners.ownerAddress }</td>
                <td>${Owners.ownerCity }</td>
                <td>${Owners.ownerTelephone }</td>
                <td>
                    <a href="find?userId=${user.userId }&pageCode=${pageBean.pageCode}">
                        <button class="layui-btn layui-btn-sm">更新</button>
                    </a>
                </td>
                    <%--<td>--%>
                    <%--<a href="findAddr?userId=${user.userId }">查看地址</a>--%>

                    <%--<a href="remove?userId=${user.userId }&pageCode=${pageBean.pageCode}" onclick="return isRemove()">删除</a>--%>
                    <%--</td>--%>
            </tr>
        </c:forEach>
    </table>
</div>

<div style="align-content: center;width: 280px; margin: 10px auto">
    <a href="AllOwners?pageCode=1">
        <button class="layui-btn layui-btn-sm">首页</button>
    </a>
    <c:if test="${pageBean.pageCode>1 }">
        <a href="AllOwners?pageCode=${pageBean.pageCode-1 }">
            <button class="layui-btn layui-btn-sm">上一页</button>
        </a>
    </c:if>
    <c:forEach var="pageCode" begin="1" end="${pageBean.allPages }" step="1">
        <a href="AllOwners?pageCode=${pageCode }">
            <button class="layui-btn layui-btn-sm">${pageCode}</button>
        </a>
    </c:forEach>
    <c:if test="${pageBean.pageCode<pageBean.allPages }">
        <a href="AllOwners?pageCode=${pageBean.pageCode+1 }">
            <button class="layui-btn layui-btn-sm">下一页</button>
        </a>
    </c:if>
    <a href="AllOwners?pageCode=${pageBean.allPages }">
        <button class="layui-btn layui-btn-sm">末页</button>
    </a>
</div>
<%--<td>--%>
<%--<form action="query">--%>
<%--<input type="text" name="pageCode" size="2"/>--%>
<%--<input type="submit" value="GO"/>--%>
<%--</form>--%>
<%--</td>--%>


<script src="../layui/layui.js" charset="utf-8"></script>
<script src="../js/jquery.js" charset="utf-8"></script>
<script src="//res.layui.com/layui/dist/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
</body>
</html>
