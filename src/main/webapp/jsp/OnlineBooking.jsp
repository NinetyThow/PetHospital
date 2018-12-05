<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/4 0004
  Time: 19:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>欢迎来到约德尔宠物医院</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="../layui/css/layui.css" type="text/css" rel="stylesheet" media="all"/>

    <style>
        .ny-tab{
            position:relative;
            z-index:1;
            max-width:740px;
            margin: 0 auto;
        }
        .inner-wrap{
            width: 100%;
            max-width: 1480px;
            min-width: 320px;
            margin: 0 auto;
            padding: 0 40px;
        }
        .ny-tab .content{
            height: 60px;
            max-width: 660px;
            margin: 0 auto;
            margin-top: -29px;
            background: #ffffff;
            border-radius: 29px;
            text-align: center;
            overflow: hidden;
            text-shadow:1px 2px 6px #000;
            box-shadow: 10px 5px 2px #888888;
        }
        .Msg{
            text-align: center;
            border-left: 2px solid #eeeeee;
            height: 58px;
            line-height: 58px;
            font-size:200%;
            /*font-weight: bold;*/
            font-family:"微软雅黑";
        }
       .item-tit {
            width: 20%;
            height: 80px;
            margin-left: -1px;
            margin-top: -1px;
            padding: 25px 40px;
            border: 1px solid #eeeeee;
            background: #1cb19e;
            color: #FFFFFF;
        }
        .item-tit .tit {
            padding-bottom: 15px;
            font-size: 20px;
            color: #FFFFFF;
        }
        .tip {
            margin-top: 20px;
            font-size: 16px;
            color: #FFFFFF;
            line-height: 32px;
        }
        .classMsg{
            float: left;
            margin-top: 30px;
            margin-left: 300px;
            align-content: center;
            width: 230px;
        }

        .item {
            /*float: left;*/
            width: 100%;
            height: 50px;
            margin-left: -1px;
            margin-top: -1px;
            padding: 15px 40px;
            border: 1px solid #eeeeee;
            cursor: pointer;
        }
        .item img {
            margin: 0;
        }
        .item div {
            margin-top: -30px;
            color: #333333;
            font-size: 16px;
            margin-left: 44px;
        }
        .item.active {
            -o-box-shadow: 0 0 30px rgba(0,0,0,.08);
            -ms-box-shadow: 0 0 30px rgba(0,0,0,.08);
            -moz-box-shadow: 0 0 30px rgba(0,0,0,.08);
            -webkit-box-shadow: 0 0 30px rgba(0,0,0,.08);
            box-shadow: 0 0 30px rgba(0,0,0,.08);
        }

    </style>

</head>
<body>
<jsp:include page="FrontPage.jsp"/>
<div style="background-image: url(/pic/service_banner.jpg) ; height: 600px;width: 1920px"></div>
<div class="ny-tab">
    <div class="inner-wrap">
        <div class="content b-shadow clearfix">
            <p class="Msg">诊疗咨询</p>
        </div>
    </div>
</div>

<div class="inner-wrap" style="margin-top: 50px">
    <div class="item-tit">
        <div class="tit">
            <p>诊疗项目</p>
            <p class="tip">科室齐全，功能完善，综合实力遥遥领先</p>
        </div>
    </div>
</div>

<div class=""style="width: 100%;align-content: center">
    <div class="classMsg">
        <div class="item">
            <img src="../pic/classimg.png" alt="">
            <div>泌尿科</div>
        </div>
        <div class="item">
            <img src="../pic/classimg2.png" alt="">
            <div>眼科</div>
        </div>
        <div class="item">
            <img src="../pic/classimg3.png" alt="">
            <div>外科</div>
        </div>
        <div class="item">
            <img src="../pic/classimg4.png" alt="">
            <div>放射科</div>
        </div>
    </div>
        <div style="width: 1000px;height: 325px;background: #00ada2;float: left;margin-top: 30px;margin-left: 10px">

        </div>


</div>




<script>
    $(".item").click(function() {
        $(this).addClass("active").siblings(".item").removeClass("active");
    })

</script>

</body>
</html>
