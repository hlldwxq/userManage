<%@ page language="java" contentType="text/html; charset=UTF-8"
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
    <link rel="stylesheet" href="../public/css/bootstrap.css" type="text/css">
    <script type="text/javascript" src="../public/js/echarts.js"></script>
    <title>题材推荐</title>
</head>
<body>
<%@include file="../frame/header.jsp" %>
<div class="jumbotron" style="margin-top: 40px;">
    <div class="container">
        <h2 style="font-family: 微软雅黑">题材推荐</h2>
        <p>与历史数据对比，分析您的项目的市场竞争力。</p>
    </div>
</div>
<div class="container" style="margin-top: 20px">
    <div class="row featurette" >
        <h1 class="page-header">
            类型票房、数量占比
        </h1>
        <div class="row featurette">
            <div class="form-group">
                <div class="controls col-sm-6">
                    <label class="radio-inline">
                        <input class="col-sm-2" id="m_movyearper1" name="m_movyearper" value="2014年" type="radio">
                        2014年
                    </label>
                    <label class="radio-inline">
                        <input class="col-sm-2" id="m_movyearper2" name="m_movyearper" value="2015年" type="radio">
                        2015年
                    </label>
                    <label class="radio-inline">
                        <input class="col-sm-2" id="m_movyearper3" name="m_movyearper" value="2016年" type="radio" checked="checked">
                        2016年
                    </label>
                </div>

            </div>
        </div>
        <div id="boxOfficeContainer" style="width: 100%; height: 500px"></div>
        <script type="text/javascript">
            var boxOfficeChart=echarts.init(document.getElementById("boxOfficeContainer"));

            //TODO 获取真实数据
            var barnameLegend=['奇幻','剧情','冒险','动作','犯罪','战争','其他'];
            var xAxisName=['2014年','2015年','2016年'];
            var data=[[80,60,90],[100,80,60],[90,20,40],[120,100,90],[80,90,60],[60,80,100],[40,80,120]];

            var boxOfficeOption={
                tooltip:{
                    trigger:'axis'
                },
                legend: {
                    data: barnameLegend
                },
                xAxis:{
                    name:'时间',
                    type: 'category',
                    data:xAxisName
                },
                yAxis:{
                    name:'票房/亿元',
                    type:'value'
                },
                toolbox:{
                    show:true,
                    feature: {
                        magicType: {
                            type: ['bar', 'line']
                        },
                        saveAsImage: {
                            pixelRatio: 2
                        }
                    }
                },
                series:[]
            };
            //add data
            for(var i=0;i<barnameLegend.length;i++){
                boxOfficeOption.series.push({
                    name:barnameLegend[i],
                    type:'bar',
                    itemStyle:{
                        normal:{
                            barBorderRadius:10
                        }
                    },
                    data:data[i]
                })
            }

            boxOfficeChart.setOption(boxOfficeOption);
        </script>
        <div class="col-sm-offset-6 col-sm-6">
            <br>
            <button type="submit" class="btn">保存</button>
        </div>
    </div>
    <div class="row featurette" >
        <h1 class="page-header">
            流行元素分析
        </h1>
        <div class="row featurette">
            <div class="form-group col-sm-4">
                <div class="controls">
                    <label class="radio-inline">
                        <input id="m_movpopular1" name="m_movpopular" value="2014年" type="radio">
                        2014年
                    </label>
                    <label class="radio-inline">
                        <input id="m_movpopular2" name="m_movpopular" value="2015年" type="radio">
                        2015年
                    </label>
                    <label class="radio-inline">
                        <input id="m_movpopular3" name="m_movpopular" value="2016年" type="radio" checked="checked">
                        2016年
                    </label>
                </div>
            </div>
            <div class="form-group">
                <div class="controls col-sm-2">
                    <label class="control-label" for="m_movmonth1"></label>
                    <select class="input-xlarge" id="m_movmonth1">
                        <option>1月</option>
                        <option>2月</option>
                        <option>3月</option>
                        <option>4月</option>
                        <option>5月</option>
                        <option>6月</option>
                        <option>7月</option>
                        <option>8月</option>
                        <option>9月</option>
                        <option>10月</option>
                        <option>11月</option>
                        <option>12月</option>
                    </select>
                </div>
                <div class="col-sm-2">
                    <p>至</p>
                </div>
                <div class="controls col-sm-2">
                    <label class="control-label" for="m_movmonth2"></label>
                    <select class="input-xlarge" id="m_movmonth2">
                        <option>1月</option>
                        <option>2月</option>
                        <option>3月</option>
                        <option>4月</option>
                        <option>5月</option>
                        <option>6月</option>
                        <option>7月</option>
                        <option>8月</option>
                        <option>9月</option>
                        <option>10月</option>
                        <option>11月</option>
                        <option>12月</option>
                    </select>
                </div>
            </div>
        </div>
        <br>
        <div class="row">
            <div class="form-group">
                <label for="m_movtopics_result" class="col-sm-4 control-label">流行话题</label>
                <div class="col-sm-8">
                    <textarea class="form-control" id="m_movtopics_result" rows="3"></textarea>
                </div>
            </div>

            <div class="form-group">
                <label for="m_movrelated_result" class="col-sm-4 control-label">电影周边</label>
                <div class="col-sm-8">
                    <textarea class="form-control" id="m_movrelated_result" rows="3"></textarea>
                </div>
            </div>
        </div>
        <div class="col-sm-offset-6 col-sm-6">
            <br>
            <button type="submit" class="btn">保存</button>
        </div>
    </div>
    <div class="row featurette">
        <h1 class="page-header">
           电影题材周期预测分析
        </h1>
        <div class="row featurette">
            <div class="form-group col-sm-4">
                <div class="controls">
                    <label class="radio-inline">
                        <input id="m_movterm1" name="m_movterm" value="2014年" type="radio">
                        2014年
                    </label>
                    <label class="radio-inline">
                        <input id="m_movterm2" name="m_movterm" value="2015年" type="radio">
                        2015年
                    </label>
                    <label class="radio-inline">
                        <input id="m_movterm3" name="m_movterm" value="2016年" type="radio" checked="checked">
                        2016年
                    </label>
                </div>
            </div>
            <div class="form-group">
                <div class="controls col-sm-2">
                    <label class="control-label" for="m_movmonth3"></label>
                    <select class="input-xlarge" id="m_movmonth3">
                        <option>1月</option>
                        <option>2月</option>
                        <option>3月</option>
                        <option>4月</option>
                        <option>5月</option>
                        <option>6月</option>
                        <option>7月</option>
                        <option>8月</option>
                        <option>9月</option>
                        <option>10月</option>
                        <option>11月</option>
                        <option>12月</option>
                    </select>
                </div>
                <div class="col-sm-2">
                    <p>至</p>
                </div>
                <div class="controls col-sm-2">
                    <label class="control-label" for="m_movmonth4"></label>
                    <select class="input-xlarge" id="m_movmonth4">
                        <option>1月</option>
                        <option>2月</option>
                        <option>3月</option>
                        <option>4月</option>
                        <option>5月</option>
                        <option>6月</option>
                        <option>7月</option>
                        <option>8月</option>
                        <option>9月</option>
                        <option>10月</option>
                        <option>11月</option>
                        <option>12月</option>
                    </select>
                </div>
            </div>
            <div class="row" style="color: transparent">
                a
            </div>
            <div class="control-group row">
                <label class="control-label col-sm-2">题材</label>
                <div class="controls col-sm-6">
                    <label class="checkbox-inline">
                        <input value="爱情" type="checkbox">爱情
                    </label>
                    <label class="checkbox-inline">
                        <input value="奇幻" type="checkbox">奇幻
                    </label>
                    <label class="checkbox-inline">
                        <input value="魔幻" type="checkbox">魔幻
                    </label>
                    <label class="checkbox-inline">
                        <input value="都市" type="checkbox">都市
                    </label>
                    <label class="checkbox-inline">
                        <input value="战争" type="checkbox">战争
                    </label>
                    <label class="checkbox-inline">
                        <input value="历史" type="checkbox">历史
                    </label>
                    <label class="checkbox-inline">
                        <input value="悬疑" type="checkbox">悬疑
                    </label>
                    <label class="checkbox-inline">
                        <input value="科幻" type="checkbox">科幻
                    </label>
                    <label class="checkbox-inline">
                        <input value="成长" type="checkbox">成长
                    </label>
                    <label class="checkbox-inline">
                        <input value="哲学" type="checkbox">哲学
                    </label>
                </div>
                <div class="col-sm-2">
                    <button type="submit" class="btn">确认</button>
                </div>
            </div>
        </div>
        <div></div><!--给可视化留下的位置-->
        <div class="col-sm-offset-6 col-sm-6">
            <br>
            <button type="submit" class="btn">保存</button>
        </div>
    </div>
</div>
<footer>
    <p class="pull-right"><a href="#">Back to top</a></p>
    <p>&copy; 2017 中国传媒大学智能标签实验室, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
</footer>
</body>
</html>