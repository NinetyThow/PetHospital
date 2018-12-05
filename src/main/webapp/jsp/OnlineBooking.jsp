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
            width: 80%;
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
        .classMsg-item{
            margin: 30px 20px;
            padding: 10px;
        }
        .classMsg-item h1{
            margin-top: 20px;
        }
        .classMsg-item-Msg{
            margin-top: 10px;
        }
        .button-bubble {
            margin-top: 50px;
            float: right;
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

        .bottom{
            width: 100%;
            max-width: 1480px;
            min-width: 320px;
            margin: 0 auto;
            padding: 0 40px;
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
        <div style="width: 1000px;height: 325px;float: left;margin-top: 30px;margin-left: 60px;border-left:5px solid green">
            <div class="classMsg-item">
                <h1>泌尿科</h1>
                <div class="classMsg-item-Msg">
                        慢性肾病是犬猫常见慢性疾病之一，据统计，超过1/3的猫和1/10的犬在它们的一生中将会患上肾脏疾病。
                    研究表明，猫患肾脏疾病的概率可能远高于我们先前的认知，所有年龄段的猫患有肾病的概率为50%，
                    而15岁及以上的猫咪患有慢性肾脏疾病的概率甚至高达80.9%。英国一项文献表明肾脏疾病是＞5岁猫死亡的常见原因，
                    其中13%是因肾脏疾病死亡。安安宠医是亚太地区首批使用IDEXX SDMA诊疗宠物肾病的试点医院，将新专利抢先带给国内的患病宠物。
                    可以在犬猫肾功能丧失25%~40%时就可以有效诊断出，能将肾病有效筛查提前48个月，早期诊断将为宠物医生提供更多的时间来处理潜在的病因或延缓疾病进程，
                    并积非常有效地提升宠物生活质量。许多犬猫在非常早期被诊断出慢性肾病之后，依然可以高质量地、愉快地生活很多年。
                </div>
                <span class="button-bubble transition">
                        <a class="button" href="/GetAllSpecialty">立即预约</a>
                        <span class="bghover"></span>
                </span>
            </div>
            <div class="classMsg-item" style="display: none">
                <div class="classMsg-item-Msg">
                    慢性肾病是犬猫常见慢性疾病之一，据统计，超过1/3的猫和1/10的犬在它们的一生中将会患上肾脏疾病。
                    研究表明，猫患肾脏疾病的概率可能远高于我们先前的认知，所有年龄段的猫患有肾病的概率为50%，
                    而15岁及以上的猫咪患有慢性肾脏疾病的概率甚至高达80.9%。英国一项文献表明肾脏疾病是＞5岁猫死亡的常见原因，
                    其中13%是因肾脏疾病死亡。安安宠医是亚太地区首批使用IDEXX SDMA诊疗宠物肾病的试点医院，将新专利抢先带给国内的患病宠物。
                    可以在犬猫肾功能丧失25%~40%时就可以有效诊断出，能将肾病有效筛查提前48个月，早期诊断将为宠物医生提供更多的时间来处理潜在的病因或延缓疾病进程，
                    并积非常有效地提升宠物生活质量。许多犬猫在非常早期被诊断出慢性肾病之后，依然可以高质量地、愉快地生活很多年。
                </div>
                <span class="button-bubble transition">
                        <a class="button" href="/GetAllSpecialty">立即预约</a>
                        <span class="bghover"></span>
                </span>
            </div>
            <div class="classMsg-item" style="display: none">
                <div class="classMsg-item-Msg">
                    慢性肾病是犬猫常见慢性疾病之一，据统计，超过1/3的猫和1/10的犬在它们的一生中将会患上肾脏疾病。
                    研究表明，猫患肾脏疾病的概率可能远高于我们先前的认知，所有年龄段的猫患有肾病的概率为50%，
                    而15岁及以上的猫咪患有慢性肾脏疾病的概率甚至高达80.9%。英国一项文献表明肾脏疾病是＞5岁猫死亡的常见原因，
                    其中13%是因肾脏疾病死亡。安安宠医是亚太地区首批使用IDEXX SDMA诊疗宠物肾病的试点医院，将新专利抢先带给国内的患病宠物。
                    可以在犬猫肾功能丧失25%~40%时就可以有效诊断出，能将肾病有效筛查提前48个月，早期诊断将为宠物医生提供更多的时间来处理潜在的病因或延缓疾病进程，
                    并积非常有效地提升宠物生活质量。许多犬猫在非常早期被诊断出慢性肾病之后，依然可以高质量地、愉快地生活很多年。
                </div>
                <span class="button-bubble transition">
                        <a class="button" href="/GetAllSpecialty">立即预约</a>
                        <span class="bghover"></span>
                </span>
            </div>
            <div class="classMsg-item" style="display: none">
                <div class="classMsg-item-Msg">
                    慢性肾病是犬猫常见慢性疾病之一，据统计，超过1/3的猫和1/10的犬在它们的一生中将会患上肾脏疾病。
                    研究表明，猫患肾脏疾病的概率可能远高于我们先前的认知，所有年龄段的猫患有肾病的概率为50%，
                    而15岁及以上的猫咪患有慢性肾脏疾病的概率甚至高达80.9%。英国一项文献表明肾脏疾病是＞5岁猫死亡的常见原因，
                    其中13%是因肾脏疾病死亡。安安宠医是亚太地区首批使用IDEXX SDMA诊疗宠物肾病的试点医院，将新专利抢先带给国内的患病宠物。
                    可以在犬猫肾功能丧失25%~40%时就可以有效诊断出，能将肾病有效筛查提前48个月，早期诊断将为宠物医生提供更多的时间来处理潜在的病因或延缓疾病进程，
                    并积非常有效地提升宠物生活质量。许多犬猫在非常早期被诊断出慢性肾病之后，依然可以高质量地、愉快地生活很多年。
                </div>
                <span class="button-bubble transition">
                        <a class="button" href="/GetAllSpecialty">立即预约</a>
                        <span class="bghover"></span>
                </span>
            </div>
        </div>
</div>

<div style="height: 60px;width: 100%"></div>


<div class="bottom" style="margin-top: 400px;border-left:5px solid green;float: bottom">
    <div class="bottom-inner" style="border-bottom:2px solid green">
        <div class="logo" style="margin-top: 30px">
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



<script>
    $(".item").click(function() {
        $(this).addClass("active").siblings(".item").removeClass("active");
    })

</script>

</body>
</html>
