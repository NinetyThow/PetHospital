<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/4 0004
  Time: 17:10
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
    <script src="../layui/layui.js" charset="utf-8"></script>
    <script src="../js/jquery.js" charset="utf-8"></script>

    <style>
        .background{
            background :url(../pic/Mainpage.jpg)no-repeat;
            height: 100%;
            width: 100%;
            position:fixed;
            background-size: cover;
            -webkit-background-size: cover;
            -o-background-size: cover;
        }
        .outer{
            margin-top: 150px;
            width: 100%;
        }
        .title{
            width: auto;
            text-align: center;
            align-content: center;
        }
        .CNtitle{
            font-size: 300%;
            color: whitesmoke;
        }
        .UStitle{
            font-size: 150%;
            color: whitesmoke;
        }

    </style>
</head>
<body>
<jsp:include page="FrontPage.jsp"/>
<div class="background" >
    <div class="outer">
        <div class="title">
            <p class="CNtitle">欢迎来到约德尔宠物医院</p>
            <p class="UStitle">Welcome to Yodel Pet Hospital</p>
        </div>
    </div>
</div>



</body>
</html>
