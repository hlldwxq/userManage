 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head lang="zh-CN">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1"><meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../public/image/商标.png">
    <link rel="stylesheet" href="../public/css/font.css" type="text/css">
    <link rel="stylesheet" type="text/css" href="../public/css/bootstrap.css">
    <link rel="stylesheet" href="../public/css/title.css" type="text/css">
    <script type="text/javascript" src="../public/js/jquery.js"></script>
    <script type="text/javascript" src="../public/js/bootstrap.js"></script>
    <title>专题片大数据系统</title>
</head>
<!-- NAVBAR
================================================== -->
<body>
<nav class="navbar navbar-fixed-top navbar-inverse">
    <div class="container">
        <div class="navbar-header">
            <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="../background/index.html" style="font-size: 20px;font-family: 微软雅黑">智能标签</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li>
                    <a href="#">新闻</a>
                    <ul>
                        <li><a href="../news/news_hotTopicSelect.html">新闻素材筛选</a></li>
                        <li><a href="../news/news_arrange.html">新闻集合编排</a></li>
                        <li><a href="../news/news_analysis.html">节目播出形式分析指导</a></li>
                        <li><a href="../news/news_feature.html">花絮精彩片段生成</a></li>
                        <li><a href="../news/news_usercondition.html">用户舆情分析</a></li>
                    </ul>
                </li>
                <li><a href="../movie/movie.html">电影</a>
                    <ul>
                        <li><a href="../movie/recommend.html">电影推荐系统</a></li>
                        <li><a href="../movie/screen.html">剧本筛选</a></li>
                        <li><a href="../movie/investment.html">投资决策</a></li>
                        <li><a href="../movie/creator.html">主创推荐</a></li>
                        <li><a href="../movie/theme.html">题材推荐</a></li>
                        <li><a href="../movie/trailer.html">预告拍摄</a></li>
                    </ul>
                </li>
                <li><a href="../entertainment/variety.html">娱乐</a>
                    <ul>
                        <li><a href="../entertainment/guest_theme_recommend.html">嘉宾与主题推荐</a></li>
                        <li><a href="../entertainment/program_schedule_arrangement.html">节目档期安排</a></li>
                        <li><a href="../entertainment/content_arrangement.html">节目内容安排</a></li>
                        <li><a href="../entertainment/user_data.html">用户信息参考</a></li>
                        <li><a href="../entertainment/advertiser_recommend.html">广告商选择</a></li>
                    </ul>
                </li>
                <li><a href="../tv/tv.html">电视剧</a>
                    <ul>
                        <li><a href="../tv/recommend.html">电影推荐系统</a></li>
                        <li><a href="../tv/screen.html">剧本筛选</a></li>
                        <li><a href="../tv/investment.html">投资决策</a></li>
                        <li><a href="../tv/creator.html">主创推荐</a></li>
                        <li><a href="../tv/theme.html">题材推荐</a></li>
                        <li><a href="../tv/trailer.html">预告拍摄</a></li>
                    </ul>
                </li>
                <li><a href="feature.html">专题片</a>
                    <ul>
                        <li><a href="../feature/recommend.html">纪录片推荐系统</a></li>
                        <li><a href="../feature/detail_search.html">精细搜索</a></li>
                        <li><a href="../feature/AudienceData.html">用户数据</a></li>
                        <li><a href="../feature/ProducerRecommendation.html">出品推荐</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="#">注册</a>
                </li>
                <li>
                    <a href="#">登录</a>
                </li>
            </ul>
            <form class="navbar-form navbar-right">
                <div class="form-group">
                    <input class="form-control" placeholder="搜您想要的..." type="text">
                </div>
                <button class="btn btn-success" type="submit">搜索</button>
            </form>
        </div>
    </div>
</nav>
<!-- Carousel
================================================== -->
<div class="jumbotron" style="margin-top: 60px;">
    <div class="container">
        <h1 style="font-family: 微软雅黑">专题片大数据系统</h1>
        <p>专题片资料数据库<br>先进大数据算法<br>观影/投资/制作一站式解决方案</p>
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
                        <h1>精细搜索</h1>
                        <a href="#mov_make"></a>
                    </div>
                    <div class="box" id="mov_a3">
                        <h1>观众数据</h1>
                        <a href="#mov_publish"></a>
                    </div>
                    <div class="box" id="mov_a4">
                        <h1>出品推荐</h1>
                        <a href="#mov_trailer"></a>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="row">
                    <div class="bigbox">
                        <h2 style="font-size: 30px">热门专题片</h2>
                        <a href="#">人间世</a><br>
                        <a href="#">我在故宫修文物</a><br>
                        <a href="#">南太平洋</a><br>
                        <a href="#" class="more_a">更多>></a>
                    </div>
                </div>
                <div class="row">
                    <div class="bigbox">
                        <h2 style="font-size: 30px">分析报告</h2>
                        <a href="#">人间世观众评论</a><br>
                        <a href="#">我在故宫修文物观影群体</a><br>
                        <a href="#">纪实类专题片推荐</a><br>
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
            <div class="col-md-5">
                <img class="featurette-image img-responsive center-block" alt="500x500" src="./image/owl.jpg" data-holder-rendered="true">
            </div>
            <div class="col-md-7">
                <h2 class="featurette-heading">
                    <a href="recommend.html">
                        大数据智能推荐
                    </a>
                </h2>
                <p class="lead">通过您的喜好和播放量、观众评论等数据，为您推荐新的专题片。茫茫星海中，寻找适合您的那一颗……</p>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div id="mov_make" class="row featurette">
        <h1 class="page-header">
            <a class="anchorjs-link " aria-label="Anchor link for: overview" data-anchorjs-icon="" style="font-family: anchorjs-icons; font-style: normal; font-variant: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>
            精细搜索
        </h1>
        <div class="row featurette">
            <div class="col-md-7">
                <h2 class="featurette-heading">
                    <a href="detail_search.html">
                        精细搜索
                    </a>
                </h2>
                <p class="lead">按照发行时间、类型、国家、导演、解说、评分、热度进行精细搜索。</p>
            </div>
            <div class="col-md-5">
                <img class="featurette-image img-responsive center-block" alt="500x500" src="./image/ha.jpg" data-holder-rendered="true">
            </div>
        </div>
    </div>
</div>
<div class="container"> <!--  style="background-color: rgba(65, 122, 210, 0.10)"-->
    <div id="mov_publish" class="row featurette">
        <h1 class="page-header">
            <a class="anchorjs-link " aria-label="Anchor link for: overview" data-anchorjs-icon="" style="font-family: anchorjs-icons; font-style: normal; font-variant: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>
            观众数据
        </h1>
        <div class="row featurette">
            <div class="col-md-5">
                <img class="featurette-image img-responsive center-block" data-src="holder.js/500x500/auto" alt="500x500" src="./image/dzj.jpg" data-holder-rendered="true">
            </div>
            <div class="col-md-7">
                <h2 class="featurette-heading">
                    <a href="AudienceData.html">
                        观众数据统计
                    </a>
                </h2>
                <p class="lead">基于大数据得到最火的电影类型、最热的话题、最流行的周边……</p>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row featurette">
        <h1 class="page-header">
            <a class="anchorjs-link " aria-label="Anchor link for: overview" data-anchorjs-icon="" style="font-family: anchorjs-icons; font-style: normal; font-variant: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>
            出品推荐
        </h1>
        <div id="mov_trailer" class="row featurette">
            <div class="col-md-7">
                <h2 class="featurette-heading">
                    <a href="ProducerRecommendation.html">
                        推荐创作团队
                    </a>
                </h2>
                <p class="lead">按照用户需求，推荐相应的制作团队。</p>
            </div>
            <div class="col-md-5">
                <img class="featurette-image img-responsive center-block" alt="500x500" src="./image/light.jpg" data-holder-rendered="true">
            </div>
        </div>
    </div>
</div>



<!-- /.container -->
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));

    var rawData = [
        {name:'小时代4：灵魂尽头',value:79472 },
        {name:'新步步惊心',value:9526 },
        {name:'西游记之大圣归来',value:289244 },
        {name:'夏洛特烦恼',value:256792 },
        {name:'捉妖记',value:204076 },
        {name:'有一个地方只有我们知道',value:92914 },
        {name:'天将雄师',value:60303 },
        {name:'寻龙诀',value:238055 },
        {name:'战狼',value:80255 },
        {name:'烈日灼心',value:171202 },
        {name:'疯狂动物城',value:401243},
        {name:'千与千寻',value:571617},
        {name:'机器人总动员',value:448189},
        {name:'疯狂原始人',value:330862},
        {name:'头脑特工队',value:184093},
        {name:'海洋之歌',value:75123},
        {name:'西游记之大圣归来',value:341713},
        {name:'火影忍者剧场版：博人传',value:41266},
        {name:'冰雪奇缘',value:264762},
        {name:'同级生',value:9199},
        {name:'超能陆战队',value:311800},
        {name:'言叶之庭',value:88761},
        {name:'小王子',value:123769},
        {name:'辉夜姬夜语',value:32700},
        {name:'航海王之黄金城',value:15727},
        {name:'神偷奶爸2',value:206935},
        {name:'怪兽大学',value:178772},
        {name:'小羊肖恩',value:51083},
        {name:'明月守护者',value:9192},
        {name:'声之形',value:293},
        {name:'男孩与世界',value:7596},
        {name:'飞屋环游记',value:449431},
        {name:'驯龙高手',value:250318},
        {name:'神偷奶爸',value:323813},
        {name:'玛丽和马克思',value:214166},
        {name:'无敌破坏王',value:162926},
        {name:'穿越时空的少女',value:160818},
        {name:'玩具总动员3',value:173464},
        {name:'你看起来很好吃',value:152551},
        {name:'麦兜故事',value:113168},
        {name:'微微一笑很倾城',value:52385},
        {name:'三傻大闹宝莱坞',value:588457},
        {name:'这个杀手不太冷',value:719736},
        {name:'少年派的奇幻漂流',value:522461},
        {name:'我的战争',value:14420},
        {name:'爸爸去哪儿',value:69795},
        {name:'盗梦空间',value:683493},
        {name:'恐怖游轮',value:259490},
        {name:'追凶者也',value:64376},
        {name:'老炮儿',value:354587},
        {name:'寒战2',value:114244},
        {name:'火海凌云',value:10982},
        {name:'惊天大逆转',value:42142},
        {name:'七月与安生',value:130978},
        {name:'源代码',value:360849},
        {name:'窃听风云3',value:98151},
        {name:'大话西游3',value:34109},
        {name:'谁的青春不迷茫',value:33715},
        {name:'荒野猎人',value:175228},
        {name:'封神传奇',value:29446},
        {name:'鲨滩',value:41364},
        {name:'僵尸肖恩',value:101518},
        {name:'我们的十年',value:4752},
        {name:'从你的全世界路过',value:91641},
        {name:'魔法老师',value:8542},
        {name:'长江图',value:13400},
        {name:'我最好的朋友的婚礼',value:10568},
        {name:'巴黎危机',value:3999},
        {name:'寒战2',value:3999},
        {name:'空中营救',value:69770},
        {name:'师父',value:124652},
        {name:'封神传奇',value:3999},
        {name:'使徒行者',value:80350},
        {name:'雪国列车',value:141403},
        {name:'东邪西毒 终极版',value:78905},
        {name:'谍影重重5',value:93023},
        {name:'源代码',value:360851},
        {name:'惊天魔盗团2',value:103991},
        {name:'绝地逃亡',value:43689},
        {name:'末日崩塌',value:83087},
        {name:'叶问3',value:65040},
        {name:'澳门风云2',value:81563},
        {name:'独立日：卷土重来',value:65746},
        {name:'钢铁骑士',value:290},
        {name:'爵迹',value:70800},
        {name:'王牌逗王牌',value:13736},
        {name:'澳门风云3',value:58336},
        {name:'惊天魔盗团',value:103991},
        {name:'湄公河行动',value:213956},
        {name:'速度与激情7',value:233784},
        {name:'大话西游之月光宝盒',value:344240},
        {name:'老炮儿',value:354587},
        {name:'复仇者联盟2：奥创纪元',value:186983},
        {name:'美人鱼',value:347425},
        {name:'钢铁侠3',value:188970},
        {name:'蚁人',value:165506},
        {name:'九层妖塔',value:108662},
        {name:'超凡蜘蛛侠2',value:116856},
        {name:'我的战争',value:14422},
        {name:'帝国的毁灭',value:32255},
        {name:'魔兽',value:155741},
        {name:'黑鹰坠落',value:92602},
        {name:'蒙古王',value:6927},
        {name:'开拓者',value:1777},
        {name:'勇士',value:2234},
        {name:'太行山上',value:3748},
        {name:'环太平洋',value:233141},
        {name:'这里的黎明静悄悄',value:8471},
        {name:'智取威虎山',value:191631},
        {name:'拯救大兵瑞恩',value:201795},
        {name:'王的盛宴',value:56581},
        {name:'超级战舰',value:87254},
        {name:'兵临城下',value:78508},
        {name:'金陵十三钗',value:284144},
        {name:'风声',value:243311},
        {name:'梅兰芳',value:85574},
        {name:'集结号',value:103481},
        {name:'天将雄师',value:65227},
        {name:'辛亥革命',value:26787},
        {name:'指环王2：双塔奇兵',value:2790},
        {name:'指环王1：魔戒再现',value:270593},
        {name:'致命魔术',value:299175},
        {name:'坠入',value:39825},
        {name:'第六感',value:202960},
        {name:'哈利·波特与魔法石',value:202797},
        {name:'加勒比海盗1：黑珍珠号的诅咒',value:290048},
        {name:'四月一日灵异记事簿剧场版：仲夏夜之梦',value:7504},
        {name:'霍比特人3：去而复返',value:178137},
        {name:'加勒比海盗2：亡灵宝藏 ',value:170337},
        {name:'小岛惊魂',value:104404},
        {name:'魁拔3战神崛起',value:16850},
        {name:'魔弦传说',value:11519},
        {name:'魔兽',value:155031},
        {name:'万能钥匙',value:143470},
        {name:'精灵旅社',value:53666},
        {name:'潘的迷宫',value:110179},
        {name:'阴阳师',value:19529},
        {name:'康斯坦丁',value:84861},
        {name:'木乃伊',value:92373},
        {name:'阴阳师2',value:11246},
        {name:'最终幻想15：王者之剑',value:11156},
        {name:'故事的故事',value:18866},
        {name:'镜子面具',value:8805},
        {name:'中邪',value:496},
        {name:'驱魔',value:818},
        {name:'死寂',value:84755},
        {name:'尖叫旅社2',value:53666},
        {name:'守日人',value:7971},
        {name:'他是龙',value:76585},
        {name:'湄公河行动',value:210738},
        {name:'盗墓笔记',value:109476},
        {name:'爵迹',value:69728},
        {name:'王牌逗王牌',value:13160},
        {name:'十二生肖',value:172740},
        {name:'九层妖塔',value:108489},
        {name:'鬼吹灯之寻龙诀',value:299615},
        {name:'西游·降魔篇',value:8296},
        {name:'追凶者也',value:61915},
        {name:'白日焰火',value:149699},
        {name:'窃听风云3',value:98041},
        {name:'烈日灼心',value:206100},
        {name:'我是证人',value:63998},
        {name:'消失爱人',value:8651},
        {name:'唐人街探案',value:206829},
        {name:'封神传奇',value:29283},
        {name:'美人鱼',value:346475},
        {name:'捉妖记',value:230785},
        {name:'西游记之孙悟空三打白骨精',value:84910},
        {name:'白发魔女传之明月天国',value:55415},
        {name:'七月与安生',value:116371},
        {name:'我的少女时代',value:243857},
        {name:'小时代',value:229374},
        {name:'微微一笑很倾城',value:51757},
        {name:'北京遇上西雅图之不二情书',value:125951},
        {name:'夏洛特烦恼',value:307663},
        {name:'滚蛋吧！肿瘤君',value:181871},
        {name:'一步之遥',value:164287},
        {name:'人再囧途之泰囧',value:403212},
        {name:'煎饼侠',value:187087},
        {name:'釜山行',value:266179},
        {name:'招魂2',value:39198},
        {name:'哭声',value:42726},
        {name:'请叫我英雄',value:16544},
        {name:'屏住呼吸',value:27553},
        {name:'寄生兽',value:60354},
        {name:'鼩鼱的巢穴',value:1330},
        {name:'古画惊魂',value:601},
        {name:'盖被子',value:649},
        {name:'足不出户',value:3487},
        {name:'吸血鬼生活',value:16412},
        {name:'死亡之雪2',value:8560},
        {name:'血色孤语',value:6185},
        {name:'二重身',value:7273},
        {name:'关灯以后',value:2908},
        {name:'僵尸',value:56074},
        {name:'潜伏2',value:3103},
        {name:'大坏狼',value:3103},
        {name:'招魂',value:72941},
        {name:'杀人漫画',value:29172},
        {name:'僵尸世界大战',value:110372},
        {name:'鬼夫',value:11444},
        {name:'孤儿怨',value:175341},
        {name:'暗夜恐惧',value:15269},
        {name:'鬼影',value:44602},
        {name:'死神来了',value:132345},
        {name:'咒怨',value:68080},
        {name:'黑暗侵袭',value:53310},
        {name:'鬼宿舍',value:696},
        {name:'骷髅一家',value:696}
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
        background: url("../movie/image/mov_red.jpg");
    }
    #mov_a2 {
        height: 180px;
        width: 300px;
        background: url("../movie/image/mov_blue.jpg");
    }
    #mov_a3 {
        height: 180px;
        width: 300px;
        background: url("../movie/image/mov_yellow.jpg");
    }
    #mov_a4 {
        height: 150px;
        width: 500px;
        background: url("../movie/image/mov_pink.jpg");
    }
</style>
<footer>
    <p class="pull-right"><a href="#">Back to top</a></p>
    <p>&copy; 2017 中国传媒大学智能标签实验室, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
</footer>
</body>
</html>
