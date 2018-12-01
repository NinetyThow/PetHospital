<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>layPage快速使用</title>
    <link rel="stylesheet" href="../layui/css/layui.css" media="all">
</head>
<body>

<div id="test1"></div>

<script src="../layui/layui.js"></script>
<script>
    layui.use('laypage', function(){
        var laypage = layui.laypage;

        //执行一个laypage实例
        laypage.render({
            elem: 'test1' //注意，这里的 test1 是 ID，不用加 # 号
            ,count: 20 //数据总数，从服务端得到
        });
    });
</script>
</body>
</html>
