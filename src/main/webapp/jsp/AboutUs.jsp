<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/4 0004
  Time: 15:00
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
        .Middle{
            margin-top: 60px;
            width: 100%;
            height: 500px;
        }
        .pc-block{
            display: block;
        }
        .about-box .left .tit{
            font-size: 24px;
            padding: 30px 0;
            position: relative;
        }
        .left{
            float: left;
            width: 45%;
        }
        .tit span{
            display: block;
            color: #333333;
        }
        .tit p {
            margin-top: 5px;
            color: #1cb19e;
        }
        .des {
            margin-top: 30px;
            line-height: 30px;
            color: #777777;
        }
        .button-bubble {
            display: block;
            width: 240px;
            height: 56px;
            line-height: 56px;
            border-radius: 28px;
            background-size: 300% auto;
            background-image: linear-gradient(90deg, #00ada2 0, #4dd89d 50%, #1cb19c);
            -moz-background-image: linear-gradient(90deg, #00ada2 0, #4dd89d 50%, #1cb19c);
            position: relative;
        }
        .button-bubble .button {
            display: block;
            width: 100%;
            text-align: center;
            color: #FFFFFF;
            font-style: normal;
            text-transform: uppercase;
            position: relative;
            z-index: 1;
        }
        .button-bubble .bghover {
            position: absolute;
            top: 0;
            left: 0;
            z-index: 0;
            width: 240px;
            height: 56px;
            line-height: 56px;
            border-radius: 28px;
            background-size: 300% auto;
            background-image: linear-gradient(90deg, #00ada2 0, #4dd89d 50%, #1cb19c);
            -moz-background-image: linear-gradient(90deg, #00ada2 0, #4dd89d 50%, #1cb19c);
        }
        .right {
            float: right;
            width: 50%;
            border-radius: 10px;
            overflow: hidden;
        }
        img {
            display: block;
            max-width: 100%;
            border: 0;
            margin: 0 auto;
        }
        .about-environment {
            margin-top: 130px;
        }
        .ny-tit {
            text-align: center;
        }
        .ny-tit span {
            line-height: 30px;
            font-size: 24px;
            color: #333333;
            text-transform: uppercase;
        }
        .ny-tit p {
            line-height: 30px;
            font-size: 24px;
            color: #333333;
        }


        .logo{
            float: left;
        }

        .bottom-inner{
            margin-top: 100px;
        }

        .Bottom-Msg{
            padding: 30px 0 0 0;
            width: 300px;
            float: right;
        }

        .Bottom-Msg span {
            display: block;
            font-size: 18px;
            line-height: 20px;
            color: #333333;
        }
        .Bottom-Msg p{
            margin-top: 20px;
        }
    </style>

</head>
<body>

<jsp:include page="FrontPage.jsp"/>

<div style="background-image: url(../pic/talent_banner.jpg) ; height: 600px;width: 1920px"></div>
<div class="ny-tab">
    <div class="inner-wrap">
        <div class="content b-shadow clearfix">
            <p class="Msg">About我们的宠物医院</p>
        </div>
    </div>
</div>

<div class="Middle">
    <div class="inner-wrap">
        <div class="about-box pc-block clearfix">
            <div class="left">
                <div class="tit">
                    <span>ABOUT WE</span>
                    <p>苏州约德尔宠物有限公司</p>
                    <div class="des">
                        苏州约德尔宠物有限公司（简称“约德尔宠医”），总部位于苏州，是一家长期致力于推动中国宠物医疗事业发展的专业宠物医院连锁品牌。
                        目前，约德尔宠医已在全国8个省份与直辖市、24座城市开设超过260家连锁宠物医院，本着“因为严谨、所以安心”的宗旨，
                        拥有数十载宠物行业管理经营经验，把宠物当家人，为爱宠提供全面、科学、透明的医疗服务，重新定义每个小生命的尊严和价值。
                        我们的服务涵盖专业动物医学诊疗、宠物基础免疫和驱虫、体检保健、健康美容等众多领域，以“家人”般的呵护，将服务做到贴心与专业，
                        为爱宠提供人性化、高品质的健康服务体验。
                    </div>
                    <span class="button-bubble transition">
                        <a class="button" href="">立即咨询</a>
                        <span class="bghover"></span>
                    </span>

                </div>
            </div>
            <div class="right">
                <img src="../pic/about_img.jpg" alt="约德尔">
            </div>

        </div>
    </div>
</div>

<div class="about-environment">
    <div class="ny-tit">
        <span>Medical Environment</span>
        <p>医疗环境</p>
    </div>
<%--轮播图--%>
        <div class="picture">
            <div class="layui-carousel" id="test1" style="align-content: center;text-align: center">
                <div carousel-item>
                    <div><img src="../pic/about1.jpg" alt=""></div>
                    <div><img src="../pic/about2.jpg" alt=""></div>
                    <div><img src="../pic/about3.jpg" alt=""></div>
                </div>
            </div>
        </div>

</div>

<div class="inner-wrap transition">
    <div class="bottom-inner">
        <div class="logo">
            <img src="../pic/logo.png" alt="">
        </div>
        <div class="Bottom-Msg">
            <div style="width: 40px;height: 40px;display: block">
                <img src="../pic/tell.png" alt="">
            </div>
            <span>联系我们</span>

            <div style="margin-top: 60px">
                <p>
                    <span>电话：</span>
                    <font>400-601-2291</font>
                </p>
                <p>
                    <span>总机：</span>
                    info@Odellpet.com
                </p>
                <p>
                    <span>地址：</span>
                    苏州工业园区腾飞创新园
                </p>
            </div>
        </div>
    </div>
</div>



<script src="../layui/layui.js"></script>
<script>
    layui.use('carousel', function(){
        var carousel = layui.carousel;
        //建造实例
        carousel.render({
            elem: '#test1'
            ,width: '100%' //设置容器宽度
            ,height:'480px'
            ,arrow: 'always' //始终显示箭头
            //,anim: 'updown' //切换动画方式
        });
    });
</script>

</body>
</html>
