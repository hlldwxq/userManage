﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ <link rel="stylesheet" href="../css/firstpage.css" type="text/css">-->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../public/image/商标.png">
    <link rel="stylesheet" href="../public/css/font.css" type="text/css">
    <link rel="stylesheet" href="../public/css/title.css" type="text/css">

    <title>电视剧大数据系统</title>

    <!-- Bootstrap core CSS -->
    <link href="../public/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../public/css/carousel.css" rel="stylesheet">
    <script src="../public/js/echarts.js"></script>
</head>
<!-- NAVBAR
================================================== -->
<body>
 <%@include file="../frame/header.jsp" %>
<!-- Carousel
================================================== -->
<div class="jumbotron" style="margin-top: 50px;">
    <div class="container">
        <h1 style="font-family: 微软雅黑">电视剧大数据系统</h1>
        <p>五千部电视剧资料数据库<br>先进大数据算法<br>观影/投资/制作一站式解决方案</p>
        <p>
            <a class="btn btn-primary btn-lg" href="#" role="button">Learn more »</a>
        </p>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-6">
            <div class="bigbox">
                <h2 style="font-size: 30px">功能模块</h2>
                    <div class="box" id="mov_a1">
                        <h1>优 秀<br>作 品<br>推 荐</h1>
                        <a href="#mov_recommend"></a>
                    </div>
                    <div class="box" id="mov_a2">
                        <h1>辅助电视剧制作</h1>
                        <a href="#mov_make"></a>
                    </div>
                    <div class="box" id="mov_a3">
                        <h1>制作发行参考</h1>
                        <a href="#mov_publish"></a>
                    </div>
                    <div class="box" id="mov_a4">
                        <h1>预告拍摄</h1>
                        <a href="#mov_trailer"></a>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="row">
                    <div class="bigbox">
                        <h2 style="font-size: 30px">正在热播</h2>
                        <a href="#">人民的名义</a><br>
                        <a href="#">漂洋过海来看你</a><br>
                        <a href="#">白鹿原</a><br>
                        <a href="#" class="more_a">更多>></a>
                    </div>
                </div>
                <div class="row">
                    <div class="bigbox">
                        <h2 style="font-size: 30px">分析报告</h2>
                        <a href="#">收视率</a><br>
                        <a href="#">热门话题</a><br>
                        <a href="#">观众年龄</a><br>
                        <a href="#" class="more_a">更多>></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <!--style="background-color: rgba(65, 122, 210, 0.10)"-->
    <div id="mov_recommend" class="row featurette">
        <h1 class="page-header">
            优秀作品推荐
        </h1>
        <div class="row featurette">
            <div class="col-md-5"><!-- 为ECharts准备一个具备大小（宽高）的Dom -->
                <div id="main" style="width: 500px;height:500px;font-size: 10px"></div>
            </div>
            <div class="col-md-7">
                <h2 class="featurette-heading">
                    <a href="${pageContext.request.contextPath}/recommend.html">
                        大数据智能推荐
                    </a>
                </h2>
                <p class="lead">通过您的喜好和收视率、口碑等数据，为您推荐电视剧和演员。茫茫星海中，寻找适合您的那一颗……</p>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div id="mov_make" class="row featurette">
        <h1 class="page-header">
            <a class="anchorjs-link " aria-label="Anchor link for: overview" data-anchorjs-icon="" style="font-family: anchorjs-icons; font-style: normal; font-variant: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>
            辅助电视剧制作
        </h1>
        <div class="row featurette">
            <div class="col-md-7">
                <h2 class="featurette-heading">
                    <a href="${pageContext.request.contextPath}/screen.html">
                        剧本筛选
                    </a>
                </h2>
                <p class="lead">先进的语义识别技术，帮助您在海量剧本中发现商机</p>
            </div>
            <div class="col-md-5">
                <img class="featurette-image img-responsive center-block" alt="500x500" src="${pageContext.request.contextPath}/image/bg1.jpg" data-holder-rendered="true">
            </div>
        </div>
        <div class="row featurette">
            <div class="col-md-5">
                <img class="featurette-image img-responsive center-block" alt="500x500" src="${pageContext.request.contextPath}/image/bg2.jpg" data-holder-rendered="true">
            </div>
            <div class="col-md-7">
                <h2 class="featurette-heading">
                    <a href="${pageContext.request.contextPath}/investment.html">
                        投资决策
                    </a>
                </h2>
                <p class="lead">紧跟市场风向标，分析您的投资方案</p>
            </div>
        </div>
    </div>
</div>
<div class="container"> <!--  style="background-color: rgba(65, 122, 210, 0.10)"-->
    <div id="mov_publish" class="row featurette">
        <h1 class="page-header">
            <a class="anchorjs-link " aria-label="Anchor link for: overview" data-anchorjs-icon="" style="font-family: anchorjs-icons; font-style: normal; font-variant: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>
            制作发行参考
        </h1>
        <div class="row featurette">
            <div class="col-md-7">
                <h2 class="featurette-heading">
                    <a href="${pageContext.request.contextPath}/creator.html">
                        主创推荐
                    </a>
                </h2>
                <p class="lead">从海量电视剧资料中选择适合您的项目的主创团队</p>
            </div>
            <div class="col-md-5">
                <img class="featurette-image img-responsive center-block" data-src="holder.js/500x500/auto" alt="500x500" src="${pageContext.request.contextPath}/image/bg3.jpg" data-holder-rendered="true">
            </div>
        </div>
        <div class="row featurette">
            <div class="col-md-5">
                <img class="featurette-image img-responsive center-block" data-src="holder.js/500x500/auto" alt="500x500" src="${pageContext.request.contextPath}/image/bg4.jpg" data-holder-rendered="true">
            </div>
            <div class="col-md-7">
                <h2 class="featurette-heading">
                    <a href="theme.html">
                        题材推荐
                    </a>
                </h2>
                <p class="lead">基于大数据得到最火的电视剧类型、最热的话题、最流行的周边……</p>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row featurette">
        <h1 class="page-header">
            <a class="anchorjs-link " aria-label="Anchor link for: overview" data-anchorjs-icon="" style="font-family: anchorjs-icons; font-style: normal; font-variant: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>
            预告拍摄
        </h1>
        <div id="mov_trailer" class="row featurette">
            <div class="col-md-7">
                <h2 class="featurette-heading">
                    <a href="${pageContext.request.contextPath}/trailer.html">
                        预告拍摄建议
                    </a>
                </h2>
                <p class="lead">分析待评测电视剧与库中电视剧词频相似度 基于海量数据给出营销和预告片制作建议</p>
            </div>
            <div class="col-md-5">
                <img class="featurette-image img-responsive center-block" alt="500x500" src="${pageContext.request.contextPath}/image/bg5.jpg" data-holder-rendered="true">
            </div>
        </div>
    </div>
</div>

    <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>&copy; 2017 中国传媒大学智能标签实验室, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
    </footer>

<!-- /.container -->
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));

    var rawData = [
        {name:'人民的名义',value:79472 },
        {name:'漂洋过海来看你',value:9526 },
        {name:'剃刀边缘',value:289244 },
        {name:'因为遇见你',value:256792 },
        {name:'狐狸的夏天',value:204076 },
        {name:'恶魔少爷别吻我第二季',value:92914 },
        {name:'鸡毛飞上天',value:60303 },
        {name:'铁血军魂',value:238055 },
        {name:'继承人',value:80255 },
        {name:'云巅之上第2季',value:171202 },
        {name:'大唐荣耀2',value:401243},
        {name:'鲜肉老师',value:571617},
        {name:'白鹿原',value:448189},
        {name:'我与你的光年距离',value:330862},
        {name:'咱家',value:184093},
        {name:'孤芳不自赏',value:75123},
        {name:'破晓',value:341713},
        {name:'漂亮的李慧珍',value:41266},
        {name:'懒人美食日记',value:264762},
        {name:'守护丽人',value:9199},
        {name:'大唐荣耀',value:311800},
        {name:'滚石爱情故事',value:88761},
        {name:'幻城凡世',value:123769},
        {name:'降龙伏虎小济公',value:32700},
        {name:'终极三国',value:15727},
        {name:'奇星记之鲜衣怒马少年时',value:206935},
        {name:'青春合作社',value:178772},
        {name:'黄金女保镖',value:51083},
        {name:'将婚姻进行到底',value:9192},
        {name:'恶魔少爷别吻我',value:293},
        {name:'周末父母',value:7596},
        {name:'向着幸福前进',value:449431},
        {name:'爱，来的刚好',value:250318},
        {name:'不一样的美男子2',value:323813},
        {name:'新猛龙过江',value:214166},
        {name:'我是幸运儿',value:162926},
        {name:'赛小花的远大前程',value:160818},
        {name:'愿有人陪你颠沛流离',value:173464},
        {name:'问题餐厅',value:152551},
        {name:'甄嬛传',value:113168},
        {name:'外科风云',value:52385},
        {name:'黎明决战',value:588457},
        {name:'大秦帝国之崛起',value:719736},
        {name:'江城警事',value:522461},
        {name:'青云志2',value:14420},
        {name:'无间道3',value:69795},
        {name:'老爸当家',value:683493},
        {name:'旋风少女第二季',value:259490},
        {name:'芈月传',value:64376},
        {name:'彝海结盟',value:354587},
        {name:'小别离',value:114244},
        {name:'麻辣变形计',value:10982},
        {name:'超少年密码',value:42142},
        {name:'最好的我们',value:130978},
        {name:'璀璨人生',value:360849},
        {name:'遇见王沥川',value:98151},
        {name:'爱情公寓3',value:34109},
        {name:'糊涂县令郑板桥',value:33715},
        {name:'太极宗师之太极门',value:175228},
        {name:'三妹',value:29446},
        {name:'极品家丁',value:41364},
        {name:'麻雀',value:101518},
        {name:'你好乔安',value:4752},
        {name:'中国式关系',value:91641},
        {name:'武神赵子龙',value:8542},
        {name:'警花与警犬',value:13400},
        {name:'亲爱的，公主病',value:10568},
        {name:'老九门',value:3999},
        {name:'快递先生与贵妃小姐',value:3999},
        {name:'杉杉来了',value:69770},
        {name:'一起长大',value:124652},
        {name:'爱情公寓4',value:3999},
        {name:'我爱男保姆',value:80350},
        {name:'三国演义',value:141403},
        {name:'亲爱的翻译官',value:78905},
        {name:'伪装者',value:93023},
        {name:'炮神',value:360851},
        {name:'法医秦明',value:103991},
        {name:'古剑奇谭',value:43689},
        {name:'乡村爱情9（下）',value:83087},
        {name:'无心法师',value:65040},
        {name:'谁寄锦书来',value:81563},
        {name:'霸道总裁的野蛮女友',value:65746},
        {name:'父母爱情',value:290},
        {name:'淘气爷孙',value:70800},
        {name:'于成龙',value:13736},
        {name:'克拉恋人',value:58336},
        {name:'木兰妈妈',value:103991},
        {name:'勇敢的心',value:213956},
        {name:'我的室友是狐仙',value:233784},
        {name:'何以笙箫默',value:344240},
        {name:'鬼吹灯之精绝古城',value:354587},
        {name:'家有喜妇',value:186983},
        {name:'幻城',value:347425},
        {name:'功夫婆媳',value:188970},
        {name:'那年青春我们正好',value:165506},
        {name:'遇见爱情的利先生',value:108662},
        {name:'愉此一生',value:116856},
        {name:'北方大地',value:14422},
        {name:'大秦帝国之纵横',value:32255},
        {name:'怒江之战',value:155741},
        {name:'我是你的眼',value:92602},
        {name:'陆贞传奇',value:6927},
        {name:'寻阁传',value:1777},
        {name:'双喜盈门',value:2234},
        {name:'卧底',value:3748},
        {name:'神话',value:233141},
        {name:'胭脂',value:8471},
        {name:'少帅',value:191631},
        {name:'小丈夫',value:201795},
        {name:'北上广依然相信爱情',value:56581},
        {name:'天天有喜2',value:87254},
        {name:'好先生',value:78508},
        {name:'爱情公寓2',value:284144},
        {name:'女医·明妃传',value:243311},
        {name:'青丘狐传说',value:85574},
        {name:'太阳的后裔',value:103481},
        {name:'雍正王朝',value:65227},
        {name:'极品新娘',value:26787},
        {name:'兰陵王妃',value:2790},
        {name:'正阳门下',value:270593},
        {name:'湄公河大案',value:299175},
        {name:'宠物情人',value:39825},
        {name:'遥远的距离',value:202960},
        {name:'战火中的兄弟',value:202797},
        {name:'校花前传之很纯很暧昧',value:290048},
        {name:'信者无敌',value:7504},
        {name:'盗墓笔记',value:178137},
        {name:'解密',value:170337},
        {name:'放弃我抓紧我',value:104404},
        {name:'十五年等待候鸟',value:16850},
        {name:'猎人',value:11519},
        {name:'长大',value:155031},
        {name:'红高粱',value:143470},
        {name:'亮剑',value:53666},
        {name:'九州天空城',value:110179},
        {name:'加油吧实习生',value:19529},
        {name:'十宗罪',value:84861},
        {name:'养父的花样年华',value:92373},
        {name:'太子妃升职记',value:11246},
        {name:'花非花雾非雾',value:11156},
        {name:'他来了，请闭眼',value:18866},
        {name:'乡村爱情圆舞曲',value:8805},
        {name:'伏击',value:496},
        {name:'历史转折中的邓小平',value:818},
        {name:'憨豆先生',value:84755},
        {name:'半妖倾城 第二季',value:53666},
        {name:'新神雕侠侣',value:7971},
        {name:'搭错车',value:76585},
        {name:'煮妇神探',value:210738},
        {name:'爱情万万岁',value:109476},
        {name:'特警力量',value:69728},
        {name:'终极一班3',value:13160},
        {name:'神犬小七 第二季',value:172740},
        {name:'猎刃',value:108489},
        {name:'三国',value:299615},
        {name:'决战江南',value:8296},
        {name:'平凡的世界',value:61915},
        {name:'无名者',value:149699},
        {name:'飞虎神鹰',value:98041},
        {name:'凤游龙门',value:206100},
        {name:'错点鸳鸯',value:63998},
        {name:'致青春',value:8651},
        {name:'大嫁风尚',value:206829},
        {name:'孤战',value:29283},
        {name:'美人心计',value:346475},
        {name:'黎明前的抉择',value:230785},
        {name:'太子快跑',value:84910},
        {name:'你是我的姐妹',value:55415},
        {name:'因为爱情有奇迹',value:116371},
        {name:'乱世丽人行',value:243857},
        {name:'如果蜗牛有爱情',value:229374},
        {name:'产科医生',value:51757},
        {name:'康熙王朝',value:125951},
        {name:'调皮王妃',value:307663},
        {name:'知青家庭',value:181871},
        {name:'旋风十一人',value:164287},
        {name:'妈祖',value:403212},
        {name:'因为爱情有幸福',value:187087},
        {name:'天涯明月刀',value:266179},
        {name:'终极一班4',value:39198},
        {name:'妈妈像花儿一样',value:42726},
        {name:'毛泽东',value:16544},
        {name:'小饭桌的故事',value:27553},
        {name:'火蓝刀锋',value:60354},
        {name:'恋恋不忘',value:1330},
        {name:'美人私房菜',value:601},
        {name:'我要当八路',value:649},
        {name:'破茧记之中二校园',value:3487},
        {name:'老公们的私房钱',value:16412},
        {name:'嫂子嫂子',value:8560},
        {name:'盛夏晚晴天',value:6185},
        {name:'红楼梦',value:7273},
        {name:'秦始皇',value:2908},
        {name:'步步惊心',value:56074},
        {name:'北上广不相信眼泪',value:3103},
        {name:'我是特种兵之火凤凰',value:3103},
        {name:'又见一帘幽梦',value:72941},
        {name:'还珠格格 第二部',value:29172},
        {name:'潜伏',value:110372},
        {name:'越狱第1季',value:11444},
        {name:'吸血鬼日记第8季',value:175341},
        {name:'不可预料的恋人',value:15269},
        {name:'匆匆那年',value:44602},
        {name:'我的胡搅年代',value:132345},
        {name:'咱们相爱吧',value:68080},
        {name:'W两个世界',value:53310},
        {name:'打狗棍',value:696},
        {name:'生死连',value:696}
    ];


    option = {
        /*title: {
         text: '豆瓣评分人数',
         left: 'center'
         },*/
        tooltip: {},
        series: [{
            name: 'option',
            type: 'treemap',
            visibleMin: 300,
            data: rawData,
            leafDepth: 2,
            levels: [
                {
                    itemStyle: {
                        normal: {
                            borderColor: '#555',
                            borderWidth: 4,
                            gapWidth: 4
                        }
                    }
                },
                {
                    colorSaturation: [0.3, 0.6],
                    itemStyle: {
                        normal: {
                            borderColorSaturation: 0.7,
                            gapWidth: 1,
                            borderWidth: 2
                        }
                    }
                },
                {
                    colorSaturation: [0.3, 0.5],
                    itemStyle: {
                        normal: {
                            borderColorSaturation: 0.6,
                            gapWidth: 1
                        }
                    }
                },
                {
                    colorSaturation: [0.3, 0.5]
                }
            ]
        }]
    };
    myChart.setOption(option);
</script>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="../public/js/jquery.js"></script>
<script>window.jQuery || document.write('<script src="../public/js/jquery.js"><\/script>')</script>
<script src="../public/js/bootstrap.js"></script>
<style>
    h1,h2{
        margin-left: 20px;
        margin-right: 20px;
    }
    .bigbox {
        position: relative;
        display: block;
        float: left;
        margin: 20px;
        padding: 0;
        border: none;
        width: 550px;
        background-color: transparent;
    }
    .bigbox>h2 {
        font-size: 20px;
        font-family: 黑体;
        display: block;
        margin: 0 0 10px;
        border-bottom: 2px solid #369ad4;
        padding: 20px 20px;
        color: #25256e;
        position: relative;
    }
    .bigbox a {
        font-size: 15px;
        color: #3b67b9;
        margin: 5px 10px;
        /*text-decoration: solid;
        text-decoration-color: #7f86c7;*/
    }
    .bigbox>p {
        font-size: 15px;
        color: #000000;
        margin: 10px;
    }
    .box{
        position: relative;
        display: block;
        overflow: hidden;
        float: left;
        margin: 0 auto;
        padding: 0;
        border: none;
        color: white;
        text-align: center;
        vertical-align: middle;
        /* background-color: #f5f5f5;*/
    }
    .box a {
        display: block;
        float: left;
        text-decoration: none;
        margin: 0 auto;
        border: none;
        width: 100%;
        height: 100%;
        position: absolute;
        top: 0;
        left: 0;
    }
    .box p{
        font-family: song;
        font-size: 20px;
        position: relative;
        left: 60px;
    }
    .box h1 {
        position: relative;
        top: 30%;
        font-family: 微软雅黑;
        font-size: 25px;
    }
    #mov_a1 {
        height: 360px;
        width: 200px;
        background: url("${pageContext.request.contextPath}/image/mov_red.jpg");
    }
    #mov_a2 {
        height: 180px;
        width: 300px;
        background: url("${pageContext.request.contextPath}/image/mov_blue.jpg");
    }
    #mov_a3 {
        height: 180px;
        width: 300px;
        background: url("${pageContext.request.contextPath}/image/mov_yellow.jpg");
    }
    #mov_a4 {
        height: 150px;
        width: 500px;
        background: url("${pageContext.request.contextPath}/image/mov_pink.jpg");
    }
</style>
</body>
</html>