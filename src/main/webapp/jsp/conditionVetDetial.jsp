<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/3
  Time: 15:23
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
<form class="layui-form" method="post" action="/findVetsByCondition">
    <div class="layui-form-item" style="width:200px;margin: 0 auto">
        <div class="layui-input-inline">
            <input type="text" name="vetName" required  lay-verify="required" placeholder="请输入医师姓名" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item"style="width:64px;margin-left: 530px;">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit lay-filter="formDemo">搜索</button>
        </div>
    </div>
</form>
<table class="layui-table" style="width: 590px;margin: 20px auto">
    <colgroup>
        <col width="150">
        <col width="200">
        <col width="120">
        <col width="120">
    </colgroup>
    <thead>
    <tr align="center">
        <th>医生ID</th>
        <th>医生姓名</th>
        <th>医师技能</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="Vets" items="${PageBean.datas }">
        <tr align="center">
            <td>${Vets.vetId }</td>
            <td>${Vets.vetName }</td>
            <td><button class="layui-btn view">查看详情</button></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</div>
<div style="align-content: center;width: 280px; margin: 10px auto">
    <a href="findVetsByCondition?pageCode=1&vetName=${vetName}">
        <button class="layui-btn layui-btn-sm">首页</button>
    </a>
    <c:if test="${PageBean.pageCode>1 }">
        <a href="findVetsByCondition?pageCode=${PageBean.pageCode-1 }&vetName=${vetName}">
            <button class="layui-btn layui-btn-sm">上一页</button>
        </a>
    </c:if>
    <c:forEach var="pageCode" begin="1" end="${PageBean.allPages }" step="1">
        <a href="findVetsByCondition?pageCode=${pageCode }&vetName=${vetName}">
            <button class="layui-btn layui-btn-sm">${pageCode}</button>
        </a>
    </c:forEach>
    <c:if test="${PageBean.pageCode<PageBean.allPages }">
        <a href="findVetsByCondition?pageCode=${PageBean.pageCode+1 }&vetName=${vetName}">
            <button class="layui-btn layui-btn-sm">下一页</button>
        </a>
    </c:if>
    <a href="findVetsByCondition?pageCode=${PageBean.allPages }&vetName=${vetName}">
        <button class="layui-btn layui-btn-sm">末页</button>
    </a>
</div>
<script src="../layui/layui.js" charset="utf-8"></script>
<script src="../js/jquery.js" charset="utf-8"></script>
<script>
    $(function () {

        $(".view").click(function () {
            var temp=this;
            $.ajax({
                type : "post",
                dataType : "json",
                url : "findVetInfo?vetId="+$(temp).parent().prev().prev().text(),
                success : function(result) {
                    var str = "";
                    for(var p in result.Vets.list){
                        str+=result.Vets.list[p].specialties.specialtyName+"&nbsp;&nbsp;"
                    }
                    layui.use('layer', function(){
                        var layer = layui.layer;
                        layer.open({
                            type: 1,
                            title: false,
                            closeBtn: 0,
                            shadeClose: true,
                            area: ['500px', '240px'],
                            skin: 'yourclass',
                            // language=HTML
                            content:'<table class="layui-table" style="width: 420px;margin: 20px auto">\n' +
                                '        <colgroup>\n' +
                                '            <col width="210">\n' +
                                '            <col width="210">\n' +
                                '        </colgroup>\n' +
                                '        <thead>\n' +
                                '        <tr align="center">\n' +
                                '            <th>医生姓名</th>\n' +
                                '            <th>医师技能</th>\n' +
                                '        </tr>\n' +
                                '        </thead>\n' +
                                '        <tbody>\n' +
                                '            <tr align="center">\n' +
                                '                <td>'+result.Vets.vetName+'</td>\n' +
                                '                <td>'+str+'</td>\n' +
                                '            </tr>\n' +
                                '        </tbody>\n' +
                                '    </table>'
                        })
                    })

                }
            })
        })
    })
</script>
</body>
</html>
