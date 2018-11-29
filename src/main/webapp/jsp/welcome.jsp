<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/28
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>欢迎来到XX宠物医院</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="../layui/css/layui.css" type="text/css" rel="stylesheet"  media="all"/>
</head>
<body>
<ul class="layui-nav layui-bg-green">
    <li class="layui-nav-item"><a href="">医院首页</a></li>
    <li class="layui-nav-item layui-this"><a href="">医疗团队</a></li>
    <li class="layui-nav-item"><a href="">诊疗服务</a></li>
    <li class="layui-nav-item">
        <a href="javascript:;">信息管理</a>
        <dl class="layui-nav-child">
            <dd><a href="">添加客户</a></dd>
            <dd><a href="">修改客户</a></dd>
            <dd><a href="">添加宠物</a></dd>
            <dd><a href="">修改宠物</a></dd>
            <dd><a href="">就医记录</a></dd>
        </dl>
    </li>

    <li class="layui-nav-item" lay-unselect="" style="float: right">
        <a href="javascript:;" id="login"><i class="layui-icon layui-icon-username"></i></a>
        <dl class="layui-nav-child">
            <dd><a href="javascript:;">修改信息</a></dd>
            <dd><a href="javascript:;">安全管理</a></dd>
            <dd><a href="javascript:;">退了</a></dd>
        </dl>
    </li>
    <li class="layui-nav-item" style="float: right">
        <a href=""><i class="layui-icon layui-icon-chat"></i>&nbsp;&nbsp;|&nbsp;&nbsp;400-601-2291</a>
    </li>
</ul>
<script src="../layui/layui.js" charset="utf-8"></script>
<script src="../js/jquery.js" charset="utf-8"></script>
<script>
    $(function () {
        $("#login").click(function () {
            layui.use('layer', function(){
                var layer = layui.layer;

                layer.open({
                    type: 1,
                    title: false,
                    closeBtn: 0,
                    shadeClose: true,
                    skin: 'yourclass',
                    content: '<form class="layui-form" action="/login" method="post">\n' +
                        '    <div class="layui-form-item">\n' +
                        '        <label class="layui-form-label">用户名</label>\n' +
                        '        <div class="layui-input-block">\n' +
                        '            <input type="text" name="employeeName" required  lay-verify="required" placeholder="请输入用户名" autocomplete="off" class="layui-input">\n' +
                        '        </div>\n' +
                        '    </div>\n' +
                        '    <div class="layui-form-item">\n' +
                        '        <label class="layui-form-label">密码框</label>\n' +
                        '        <div class="layui-input-inline">\n' +
                        '            <input type="password" name="employeePassword" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">\n' +
                        '        </div>\n' +
                        '    </div>\n' +
                        '    <div class="layui-form-item">\n' +
                        '        <div class="layui-input-block">\n' +
                        '            <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>\n' +
                        '            <button type="reset" class="layui-btn layui-btn-primary">重置</button>\n' +
                        '        </div>\n' +
                        '    </div>\n' +
                        '</form>'
                });
            });

        })
    })
    layui.use('element', function(){
        var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块

        //监听导航点击
        element.on('nav(demo)', function(elem){
            //console.log(elem)
            layer.msg(elem.text());
        });
    });
</script>
</body>
</html>
