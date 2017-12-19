<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
<head lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ <link rel="stylesheet" href="../css/firstpage.css" type="text/css">-->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="${pageContext.request.contextPath}/public/image/smalllogo.png">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/font.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/title1.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/bootstrap.css" type="text/css">
    
    <!-- Include external Editor style. -->
    <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
   	<link href="https://cdn.bootcss.com/codemirror/5.29.0/codemirror.min.css" rel="stylesheet">

    <!-- Include Editor style. -->
    <link href="${pageContext.request.contextPath}/public/froala/css/froala_editor.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/public/froala/css/froala_style.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/public/froala/css/custom-theme.css" rel="stylesheet" type="text/css" />
    <title>预告拍摄</title>
</head>
<body>
 <%@include file="../frame/header.jsp" %>
<div class="jumbotron" style="margin-top:50px">
    <div class="container">
        <h2 style="font-family: 微软雅黑">编辑条目</h2>
    </div>
</div>
<div class="row">
    <div class="col-xs-3">.</div>
    <div class="col-xs-8">
        <form class="form-horizontal" name="form1" method="post" action="../save" enctype="multipart/form-data" onsubmit="improveSubmit()">
            <div class="form-group">
            <input type="text" class="hidden" name="id" value="${plot.id}">
            <input type="text" class="hidden" name="picurl" value="${plot.picurl}">
                <label for="inputtitle" class="col-sm-2 control-label">标题</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="inputtitle" name="name" value="${plot.name}">
                </div>
            </div>
            <div class="form-group">
                <label for="province" class="col-sm-2 control-label">类型</label>
                <div class="col-sm-6">
                    <select class="form-control" name="type" id="province" onchange="changeSelect(this.selectedIndex)"></select>
                </div>
            </div>
            <div class="form-group">
                <label for="city" class="col-sm-2 control-label">二级类型</label>
                <div class="col-sm-6">
                    <select class="form-control" name="secondtype" id="city"></select>
                </div>
            </div>
            <div class="form-group">  
                <label for="m_movup" class="col-sm-2 control-label">上传图片</label>
                <div class="col-sm-6">
                    <input class="input-file" id="m_movup" name="pic" type="file">
                </div>
            </div>
            <div class="form-group">
                <label for="content" class="col-sm-2 control-label">内容</label>
                <div class="col-sm-6">
                    <textarea id="content" class="form-control" rows="5" name="brief">${plot.brief}</textarea>
                </div>
            </div>
           <div class="form-group">
                <label for="source" class="col-sm-2 control-label">出现此桥段的作品</label>
                <div class="col-sm-6">
                    <textarea id="source" class="form-control" rows="3" placeholder="请按“作品名：简介”的格式提交，如果有多部作品，请用回车分隔" name="sourcename">${plot.sourcename}</textarea>
                </div>
            </div>
             <div class="form-group">
                <label for="source" class="col-sm-2 control-label">桥段中的呈现</label>
                <div class="col-sm-6">
                     <div id="plotEdit">${plot.sourceintroduction}</div>
                   <textarea id="sourceintroduction" class="form-control hide" rows="3" placeholder="桥段呈现" name="sourceintroduction"></textarea>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-4 col-sm-4">
                    <button type="submit" class="btn btn-default" name="actiontype" value="1">提交</button>
                </div>
            </div>
        </form>
    </div>
</div>
<script src="https://cdn.bootcss.com/codemirror/5.29.0/codemirror.min.js"></script>
<script src="https://cdn.bootcss.com/codemirror/5.29.0/mode/xml/xml.min.js"></script>

<!-- Include Editor JS files. -->
<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/public/froala/js/froala_editor.pkgd.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/public/froala/js/quick_insert.min.js"></script>
<!-- Initialize the editor. -->
<script>
    $(
        function() {
        $('#plotEdit').froalaEditor({
            theme:'custom',
            toolbarButtons: ['bold', 'italic', 'underline','subscript', 'superscript',  '|' , 'paragraphFormat', 'align', 'formatOL', 'formatUL', 'outdent', 'indent',  'insertHR', '|' , 'undo', 'redo', 'applyFormat', 'removeFormat' ],
            quickInsertButtons: [],
            pluginsEnabled: [ 'paragraphFormat', 'align', 'lists'],
            height: 160
        })
    });
    function improveSubmit()
    {
    	//后续增加校验
    	$('#sourceintroduction').val($('#plotEdit').froalaEditor('html.get'));
    	console.log($('#sourceintroduction').val());
    	return true;
    }
</script>
<script type="text/javascript">
    var arr_province = ["请选择类型","主题","类型","媒体","叙事","其他目录"];
    var arr_city = [
        ["请选择二级类型"],
        ["审查","战斗","死亡","家庭","命运与预言","食物","节日","金钱","道德","政治","宗教","校园"],
        ["动作冒险","喜剧","商业","犯罪与惩罚","剧情","恐怖","爱情","新闻","职业摔跤","推理","运动故事","战争"],
        ["所有媒体","西方动画","日本动画","漫画书","同人","电影","游戏","文学","音乐与音效","新媒体","平面媒体","广播","连环画","桌游","电子游戏","网络漫画"],
        ["通用的桥段","实用的“魔法”","塑造人物","人物类型","人物设置","对白","主题","叙事手法","副文本","情节","背景","奇观"],
        ["电视节目","贡献者","创作手法","创作者","衍生作品","语言","创作规则","商业运作","人格分裂","储藏室"]
    ];
    //网页加载完成，初始化菜单
    window.onload = init;//传入函数地址
    function init(){
        //首先获取对象
        var province = document.form1.type;
        var city = document.form1.secondtype;

        //指定省份中<option>标记的个数
        province.length = arr_province.length;

        //循环将数组中的数据写入<option>标记中
        for(var i=0;i<arr_province.length;i++){
            province.options[i].text = arr_province[i];
            province.options[i].value = arr_province[i];
        }

        //修改省份列表的默认选择项
        var index = 0;
        province.selectedIndex = index;

        //指定城市中<option>标记的个数
        city.length = arr_city[index].length;

        //循环将数组中的数据写入<option>标记中
        for (var j = 0; j<arr_city[index].length;j++) {
            city.options[j].text = arr_city[index][j];
            city.options[j].value = arr_city[index][j];
        }

    }

    function  changeSelect(index){
        //选择对象
        var city = document.form1.city;
        //修改省份列表的选择项
        province.selectedIndex = index;

        //指定城市中<option>标记的个数
        city.length = arr_city[index].length;

        //循环将数组中的数据写入<option>标记中
        for (var j = 0; j<arr_city[index].length;j++) {
            city.options[j].text = arr_city[index][j];
            city.options[j].value = arr_city[index][j];
        }
    }

</script>
<footer>
    <p class="pull-right"><a href="#">Back to top</a></p>
    <p>&copy; 2017 中国传媒大学智能标签实验室, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
</footer>
</body>
</html>