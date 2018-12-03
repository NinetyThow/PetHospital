<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/3 0003
  Time: 15:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        #qwe{
        height: 1000px;
            background-color: gainsboro;
        }

        #main{
            height: 500px;
            width: 600px;
            margin: 0 auto;
            border: 2px solid orange;
        }

        #img{
            height: 300px;
            width: 300px;
            float: left;
        }

        #info{
            height: 300px;
            width: 200px;
            float: left;
        }

        li{
            height: 75px;
            line-height: 75px;
        }

        #top {
            height: 200px;
        }
    </style>
</head>
<body>
<%@ include file="welcome.jsp" %>
<div id="qwe">
<div id="main">
    <div id="top">
        <div style="font-size: 50px;width: 600px;text-align: center;margin: 0 auto;padding-top: 70px">约德尔宠物诊所</div>
    </div>
    <div id="img">
        <img src="../upload/${requestScope.pet.petPicture}" width="300" height="300">
    </div>
    <div id="info" style="margin-left: 100px">
        <ul>
            <li><img src="../icon/pet.png" height="35" width="35"> 宠物姓名：${requestScope.pet.petName}</li>
            <li><img src="../icon/birthday.png" height="35" width="35">宠物生日：${requestScope.pet.petBirthday}</li>
            <li><img src="../icon/type.png" height="35" width="35">宠物类型：${requestScope.pet.types.typeName}</li>
            <li><img src="../icon/owner.png" height="35" width="35">主人姓名：${requestScope.pet.owners.ownerName}</li>
        </ul>
    </div>
</div>
</div>
</body>
</html>
