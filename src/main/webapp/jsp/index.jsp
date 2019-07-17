<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>


    <title>首页</title>
    <style>
        * {
            padding: 0;
            margin: 0;
            font-family: "微软雅黑";
        }

        .header {
            height: 72px;
            background: #458fce;
        }

        .header .logo {
            color: #fff;
            line-height: 70px;
            font-size: 30px;
            margin-left: 20px;
            display: inline-block;
            text-align: center;

        }

        a {
            color: #fff;
            text-decoration: none;
        }

        .header .login {
            float: right;
            color: #fff;
            line-height: 72px;
            margin-right: 2px;
            display: inline-block;
        }

        .banner {
            height: 380px;
            overflow: hidden;
            background: #ddd;
        }
    </style>

    <script type="text/javascript">
        $(function () {
            // 点击按钮触发
            $('#myBtn').click(function () {

                var dbname = $("#dbname").val();
                alert(dbname);
                var pwd = $("#showinput").val();

                // window.location.href='/myTest2?account='+account+'&pwd='+pwd;

                $.ajax({
                           type: "post",
                           url: "test/do",
                           data: {"dbname": dbname},
                           dataType: "json",
                           contentType: "application/json; charset=utf-8",
                           success: function (data) {
                               // alert(typeof(recordlist));
                               $("#showinput").val(data);

                           },
                           error: function () {
                               alert('error');

                           }

                       });

            });
        });


    </script>
</head>
<body>


<div class="header">
    <div class="logo">web实践</div>
    <div class="login">
        <a href="javascript:void(0)">登录</a>
        <span>|</span>
        <a href="javascript:void(0)">故事</a>
    </div>
    新增数据库名字： <input id="dbname" value="dbname"/>

    账号： <input id="showinput" value=""/>

    <input type="submit" id="myBtn" value="参数传值二"/>

</div>
</body>
</html>
