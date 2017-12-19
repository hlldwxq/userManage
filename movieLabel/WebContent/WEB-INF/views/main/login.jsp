<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="./public/image/商标.png">
    <title>登录</title>
    <link href="public/css/ie10-viewport-bug-workaround.css" rel="stylesheet">
    <script src="public/js/ie-emulation-modes-warning.js"></script>
    <link href="public/css/bootstrap.css" rel="stylesheet">

    <link href="public/css/title.css" rel="stylesheet">

</head>
<body>
 <%@include file="../frame/header.jsp" %>
    <div class="container clearfix">
        <form class="form-signin" method="post" action="${pageContext.request.contextPath}/login">
            <h2 class="form-signin-heading">登录</h2>
            <label class="sr-only" for="inputEmail">用户名</label>
            <input id="inputEmail" name="username" class="form-control" placeholder="用户名" required="" autofocus="" type="email">
            <label class="sr-only" for="inputPassword">密码</label>
            <input id="inputPassword" name="password" class="form-control" placeholder="密码" required="" type="password">
        <div class="checkbox">
        <label>
        <input value="remember-me" type="checkbox">
        记住密码
        </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
        </form>
        </div>

        </body>
<style>
    body {
        padding-top: 120px;
        padding-bottom: 40px;
        background-color: #eee;
    }

    .form-signin {
        max-width: 330px;
        padding: 15px;
        margin: 0 auto;
    }
    .form-signin .form-signin-heading,
    .form-signin .checkbox {
        margin-bottom: 10px;
    }
    .form-signin .checkbox {
        font-weight: normal;
    }
    .form-signin .form-control {
        position: relative;
        height: auto;
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
        padding: 10px;
        font-size: 16px;
    }
    .form-signin .form-control:focus {
        z-index: 2;
    }
    .form-signin input[type="email"] {
        margin-bottom: -1px;
        border-bottom-right-radius: 0;
        border-bottom-left-radius: 0;
    }
    .form-signin input[type="password"] {
        margin-bottom: 10px;
        border-top-left-radius: 0;
        border-top-right-radius: 0;
    }
</style>
        </html>