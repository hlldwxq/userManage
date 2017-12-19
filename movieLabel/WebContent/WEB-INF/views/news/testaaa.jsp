<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">

<head>
    <title>测试HTML导出内容至WORD</title>
    <script type="text/javascript" language="javascript">
        //指定页面区域内容导入Word
        function exportToWord(controlId) {
            var control = document.getElementById(controlId);
            try {
                var oWD = new ActiveXObject("Word.Application");
                var oDC = oWD.Documents.Add("", 0, 1);
                var oRange = oDC.Range(0, 1);
                var sel = document.body.createTextRange();
                try {
                    sel.moveToElementText(control);
                } catch (notE) {
                    alert("导出数据失败，没有数据可以导出。");
                    window.close();
                    return;
                }
                sel.select();
                sel.execCommand("Copy");
                oRange.Paste();
                oWD.Application.Visible = true;
                //window.close();
            }
            catch (e) {
                alert("导出数据失败，需要在客户机器安装Microsoft Office Word(不限版本)，将当前站点加入信任站点，允许在IE中运行ActiveX控件。");
                try { oWD.Quit(); } catch (ex) { }
                //window.close();
            }
        }

        function html2word(Area) {
            /*if (window.ActiveXObject){
                var oWD=new ActiveXObject("Microsoft.XMLDOM");
            }
            else{
                if (document.implementation&& document.implementation.createDocument){
                    var oWD= document.implementation.createDocument("","",null);
                }
            }/*/
            var oWD = new ActiveXObject("Word.Application");
            var oDC = oWD.Documents.Add("", 0, 1);
            var oRange = oDC.Range(0, 1);
            var sel = document.body.createTextRange();
            sel.moveToElementText(document.getElementById(Area));
            sel.select();
            sel.execCommand("Copy");
            oRange.Paste();
            oWD.Application.Visible = true;
        }
    </script>
</head>
<body>
<%@include file="../frame/header.jsp" %>
<div id="TestDiv">
    <div align="center">爱情公寓第三季成绩表</div>

    <table width="100%">
        <tr>
            <td style="background-color: #F50AE5; font-weight: bold;text-align:center">
                名次
            </td>
            <td style="background-color: #F50AE5; font-weight: bold;text-align:center">
                姓名
            </td>
            <td style="background-color: #F50AE5; font-weight: bold;text-align:center">
                总分
            </td>
        </tr>
        <tr>
            <td style="text-align:center">
                2012001
            </td>
            <td style="text-align:center">
                曾小贤
            </td>
            <td style="text-align:center">
                86
            </td>
        </tr>
        <tr>
            <td style="text-align:center">
                2012002
            </td>
            <td style="text-align:center">
                胡一菲
            </td>
            <td style="text-align:center">
                85
            </td>
        </tr>
    </table>
</div>
<div>
    <div style="text-align:center">
        <input type="button" value="导出到WORD" onclick="return exportToWord('TestDiv')" />
        <input type="button" value="导出到WORD" onclick="return html2word('TestDiv')" />
    </div>
</div>
</body>
</html>