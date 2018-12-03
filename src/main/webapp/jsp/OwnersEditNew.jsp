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

<script>
    function showDialog(obj) {
        var temp = obj;
        var ownerId =$(temp).parent().prevAll("td:last").text();
        console.log(ownerId);layui.use('layer', function(){
            var layer = layui.layer;
            layer.open({
                type: 1,
                title: false,
                closeBtn: 0,
                shadeClose: true,
                skin: 'yourclass',
                content: '<form class="layui-form layui-form-pane" action="UpdateOwnerMsg" method="post">\n' +
                    '    <div class="layui-form-item">\n' +
                    '        <label class="layui-form-label">ID</label>\n' +
                    '        <div class="layui-input-inline">\n' +
                    '            <input type="text" name="ownerId" lay-verify="required"  autocomplete="off" class="layui-input" readonly="readonly" value="" id="ownerId"> \n' +
                    '        </div>\n' +
                    '    </div>\n' +
                    '    <div class="layui-form-item">\n' +
                    '        <label class="layui-form-label">姓名</label>\n' +
                    '        <div class="layui-input-inline">\n' +
                    '            <input type="text" name="ownerName" lay-verify="required"  autocomplete="off" class="layui-input" value="" id="name"> \n' +
                    '        </div>\n' +
                    '    </div>\n' +
                    '    <div class="layui-form-item">\n' +
                    '        <label class="layui-form-label">地址</label>\n' +
                    '        <div class="layui-input-inline">\n' +
                    '            <input type="text" name="ownerAddress" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input" id="address">\n' +
                    '        </div>\n' +
                    '    </div>\n' +
                    '    <div class="layui-form-item">\n' +
                    '        <label class="layui-form-label">城市</label>\n' +
                    '        <div class="layui-input-inline">\n' +
                    '            <input type="text" name="ownerCity" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input" id="city">\n' +
                    '        </div>\n' +
                    '    </div>\n' +
                    '    <div class="layui-form-item">\n' +
                    '        <label class="layui-form-label">手机</label>\n' +
                    '        <div class="layui-input-inline">\n' +
                    '            <input type="text" name="ownerTelephone" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input" id="Telephone">\n' +
                    '        </div>\n' +
                    '    </div>\n' +
                    '\n' +
                    '    <div class="layui-form-item" style="text-align: center">\n' +
                    '        <button class="layui-btn" lay-submit="" lay-filter="demo2">提交</button>\n' +
                    '        <button type="reset" class="layui-btn layui-btn-primary">重置</button>\n' +
                    '    </div>\n' +
                    '</form>'
            });
        });
        $.ajax({
            type: "get",
            url: "/showOwnersMsgById",
            dataType: "json",
            data: {"ownerId": ownerId},
            success: function (data) {
                console.log(data);
                    $("#ownerId").attr("value", data.ownerId);
                    $("#name").attr("value", data.ownerName);
                    $("#address").attr("value", data.ownerAddress);
                    $("#city").attr("value", data.ownerCity);
                    $("#Telephone").attr("value", data.ownerTelephone);
                    console.log(1111111);
            },
            error: function (e) {
                console.log(e)
            }
        })
    }
</script>
<%--搜索框--%>
<div style="background-image: url(/jsp/Ownernew.jpg) ; height: 600px;width: 1920px"></div>
s
<div style="align-content: center;width: 500px; margin: 10px auto">
        <form action="/AllOwnersLike" method="post">
                <div style="float: left;width: 400px">
                    <input type="text" name="ownerId" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input" >
                </div>
                <div style="float: left">
                    <button class="layui-btn" lay-submit="" lay-filter="demo2">搜索</button>
                </div>
        </form>
</div>

<div style="margin: 60px auto">
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
                        <%--<a href="showOwnersMsg?ownerId=${Owners.ownerId }&pageCode=${pageBean.pageCode}">--%>
                    <button input type="button" onclick="showDialog(this)"class="layui-btn" class="update">更新</button>
                        <%--</a>--%>
                </td>

            </tr>
        </c:forEach>
    </table>
</div>

<div style="align-content: center;width: 800px; margin: 10px auto">
    <div style="text-align: center ;align-content: center">
    <a href="AllOwnersLike?pageCode=1&ownerId=${requestScope.ownerId}">
        <button class="layui-btn layui-btn-sm">首页</button>
    </a>
    <c:if test="${pageBean.pageCode>1 }">
        <a href="AllOwnersLike?pageCode=${pageBean.pageCode-1 }&ownerId=${requestScope.ownerId}">
            <button class="layui-btn layui-btn-sm">上一页</button>
        </a>
    </c:if>
    <c:forEach var="pageCode" begin="1" end="${pageBean.allPages }" step="1">
        <a href="AllOwnersLike?pageCode=${pageCode }&ownerId=${requestScope.ownerId}">
            <button class="layui-btn layui-btn-sm">${pageCode}</button>
        </a>
    </c:forEach>
    <c:if test="${pageBean.pageCode<pageBean.allPages }">
        <a href="AllOwnersLike?pageCode=${pageBean.pageCode+1 }&ownerId=${requestScope.ownerId}">
            <button class="layui-btn layui-btn-sm">下一页</button>
        </a>
    </c:if>
    <a href="AllOwnersLike?pageCode=${pageBean.allPages }&ownerId=${requestScope.ownerId}">
        <button class="layui-btn layui-btn-sm">末页</button>
    </a>
    </div>
</div>

<script src="../layui/layui.js" charset="utf-8"></script>
<script src="../js/jquery.js" charset="utf-8"></script>

<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->


</body>
</html>
