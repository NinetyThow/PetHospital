<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>layPage快速使用</title>
    <link rel="stylesheet" href="../layui/css/layui.css" media="all">
</head>
<body>

<form action="/OwnerBypetsId" id="form1">
    <input type="text" name="petsId">
    <button type="submit" >提交</button>
</form>


<script>

    function request_json(){
        $.ajax({
            type:"post",
            url:"OwnerBypetsId",
            contentType:"application/json;charset=utf-8",
            data: $('#form1').serialize() ,
            success:function(data){
                // alert(data.toString());
            }
        });
    }
</script>

</body>
</html>
