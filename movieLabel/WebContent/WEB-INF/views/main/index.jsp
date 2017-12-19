<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head lang="en">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>智能标签</title>
    <link href="public/css/bootstrap.css" rel="stylesheet">
    <link href="public/css/title.css" rel="stylesheet">
</head>
<body>
<style>
    /*
    * Globals
    */

    /* Links */
    a,
    a:focus,
    a:hover {
        color: #fff;
    }

    /* Custom default button */
    .btn-default,
    .btn-default:hover,
    .btn-default:focus {
        color: #333;
        text-shadow: none; /* Prevent inheritance from `body` */
        background-color: #fff;
        border: 1px solid #fff;
    }


    /*
    * Base structure
    */

    html,
    body {
        height: 100%;
        background-color: rgb(1, 58, 89);
    }
    body {
        color: #fff;
        text-align: center;
        text-shadow: 0 1px 3px rgba(0,0,0,.5);
    }

    /* Extra markup and styles for table-esque vertical and horizontal centering */
    .site-wrapper {
        display: table;
        width: 100%;
        height: 100%; /* For at least Firefox */
        min-height: 100%;
        -webkit-box-shadow: inset 0 0 100px rgba(64, 97, 184, 0.50);
        box-shadow: inset 0 0 100px rgba(64, 97, 184, 0.50);
    }
    .site-wrapper-inner {
        display: table-cell;
        vertical-align: top;
    }
    .cover-container {
        margin-right: auto;
        margin-left: auto;
    }

    /* Padding for spacing */
    .inner {
        padding: 30px;
    }


    /*
    * Header
    */
    .masthead-brand {
        margin-top: 10px;
        margin-bottom: 10px;
    }

    .masthead-nav > li {
        display: inline-block;
    }
    .masthead-nav > li + li {
        margin-left: 20px;
    }
    .masthead-nav > li > a {
        padding-right: 0;
        padding-left: 0;
        font-size: 16px;
        font-weight: bold;
        color: #fff; /* IE8 proofing */
        color: rgba(255,255,255,.75);
        border-bottom: 2px solid transparent;
    }
    .masthead-nav > li > a:hover,
    .masthead-nav > li > a:focus {
        background-color: transparent;
        border-bottom-color: #a9a9a9;
        border-bottom-color: rgba(255,255,255,.25);
    }
    .masthead-nav > .active > a,
    .masthead-nav > .active > a:hover,
    .masthead-nav > .active > a:focus {
        color: #fff;
        border-bottom-color: #fff;
    }

    @media (min-width: 768px) {
        .masthead-brand {
            float: left;
        }
        .masthead-nav {
            float: right;
        }
    }


    /*
    * Cover
    */

    .cover {
        padding: 0 20px;
    }
    .cover .btn-lg {
        padding: 10px 20px;
        font-weight: bold;
    }


    /*
    * Footer
    */

    .mastfoot {
        color: #999; /* IE8 proofing */
        color: rgba(255,255,255,.5);
    }


    /*
    * Affix and center
    */

    @media (min-width: 768px) {
        /* Pull out the header and footer */
        .masthead {
            position: fixed;
            top: 0;
        }
        .mastfoot {
            position: fixed;
            bottom: 0;
        }
        /* Start the vertical centering */
        .site-wrapper-inner {
            vertical-align: middle;
        }
        /* Handle the widths */
        .masthead,
        .mastfoot,
        .cover-container {
            width: 100%; /* Must be percentage or pixels for horizontal alignment */
        }
    }

    @media (min-width: 992px) {
        .masthead,
        .mastfoot,
        .cover-container {
            width: 700px;
        }
    }
</style>
        <div class="site-wrapper">
        <div class="site-wrapper-inner">
        <div class="cover-container">
        <div class="masthead clearfix">
        <div class="inner">
        <!--<h3 class="masthead-brand">Cover</h3>-->
           <%@include file="../frame/header.jsp" %>
        </div>
        </div>
        <div class="inner cover">
        <h1 class="cover-heading">智能标签实验室</h1>
        <p class="lead">智能标签大数据决策系统</p>
        <p class="lead">
        <a class="btn btn-lg btn-default" href="#">了解更多</a>
        </p>
        </div>
        <div class="mastfoot">
        <div class="inner">
            <footer>
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>&copy; 2017 中国传媒大学智能标签实验室, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
            </footer>
        </div>
        </div>
        </div>
        </div>
        </div>
        <script src="public/js/jquery.js"/>
        
    <script src="public/js/bootstrap.js"/>
</body>
</html>