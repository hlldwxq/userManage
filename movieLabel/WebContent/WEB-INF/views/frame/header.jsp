 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <nav class="navbar navbar-fixed-top navbar-inverse clearfix">
                <div class="container">
                    <div class="navbar-header">
                        <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="${pageContext.request.contextPath}" style="font-size: 20px;font-family: 微软雅黑">智能标签</a>
                    </div>
                    <div id="navbar" class="collapse navbar-collapse">
                        <ul class="nav navbar-nav">
                            <li>
                                <a href="#">新闻</a>
                                <ul>
                                    <li><a href="${pageContext.request.contextPath}/news/news_arrange">新闻集合编排</a></li>
                                    <li><a href="${pageContext.request.contextPath}/news/news_analysis">节目播出形式分析指导</a></li>
                                    <li><a href="${pageContext.request.contextPath}/news/news_feature">花絮精彩片段生成</a></li>
                                    <li><a href="${pageContext.request.contextPath}/news/news_hotTopicSelect">新闻素材筛选</a></li>
                                    <li><a href="${pageContext.request.contextPath}/news/news_usercondition">用户舆情分析</a></li>
                                </ul>
                            </li>
                            <li><a href="${pageContext.request.contextPath}/movie/movie">电影</a>
                                <ul>
                                    <li><a href="${pageContext.request.contextPath}/movie/recommend">电影推荐系统</a></li>
                                    <li><a href="${pageContext.request.contextPath}/movie/screen">剧本筛选</a></li>
                                    <li><a href="${pageContext.request.contextPath}/movie/investment">投资决策</a></li>
                                    <li><a href="${pageContext.request.contextPath}/movie/creator">主创推荐</a></li>
                                    <li><a href="${pageContext.request.contextPath}/movie/theme">题材推荐</a></li>
                                    <li><a href="${pageContext.request.contextPath}/movie/trailer">预告拍摄</a></li>
                                    <li><a href="${pageContext.request.contextPath}/movie/plot">桥段</a></li>
                                </ul>
                            </li>
                            <li><a href="${pageContext.request.contextPath}/entertainment/variety">娱乐</a>
                                <ul>
                                    <li><a href="${pageContext.request.contextPath}/entertainment/guest_theme_recommend?comment=1">嘉宾与主题推荐</a></li>
                                    <li><a href="${pageContext.request.contextPath}/entertainment/program_schedule_arrangement">节目档期安排</a></li>
                                    <li><a href="${pageContext.request.contextPath}/entertainment/content_arrangement">节目内容安排</a></li>
                                    <li><a href="${pageContext.request.contextPath}/entertainment/user_data">用户信息参考</a></li>
                                    <li><a href="${pageContext.request.contextPath}/entertainment/advertiser_recommend">广告商选择</a></li>
                                </ul>
                            </li>
                            <li><a href="${pageContext.request.contextPath}/tv/tv">电视剧</a>
                                <ul>
                                    <li><a href="${pageContext.request.contextPath}/tv/recommend">电视推荐系统</a></li>
                                    <li><a href="${pageContext.request.contextPath}/tv/screen">剧本筛选</a></li>
                                    <li><a href="${pageContext.request.contextPath}/tv/investment">投资决策</a></li>
                                    <li><a href="${pageContext.request.contextPath}/tv/creator">主创推荐</a></li>
                                    <li><a href="${pageContext.request.contextPath}/tv/theme">题材推荐</a></li>
                                    <li><a href="${pageContext.request.contextPath}/tv/trailer">预告拍摄</a></li>
                                </ul>
                            </li>
                            <li><a href="${pageContext.request.contextPath}/feature/feature">专题片</a>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/feature/recommend">纪录片推荐系统</a></li>
                        <li><a href="${pageContext.request.contextPath}/feature/detail_search">精细搜索</a></li>
                        <li><a href="${pageContext.request.contextPath}/feature/AudienceData">用户数据</a></li>
                        <li><a href="${pageContext.request.contextPath}/feature/ProducerRecommendation">出品推荐</a></li>
                    </ul>
                </li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                        <% if (session.getAttribute("username")!=null ){%>
                         <li>
                                <a href="#"><%=(String) session.getAttribute("username")%></a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/logout">退出</a>
                            </li>
                        <% }else{ %>
                         <li>
                                <a href="#">注册</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/login">登录</a>
                            </li>
                        <% } %>
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