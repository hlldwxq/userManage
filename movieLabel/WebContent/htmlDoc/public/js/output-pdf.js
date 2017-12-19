/**
 * Created by ThinkPad on 2017/4/22.
 */
document.getElementById("outputpdf").onclick = function(){
    html2canvas(document.getElementById("content"), {
        onrendered: function(canvas) {
            //通过html2canvas将html渲染成canvas，然后获取图片数据
            var imgData = canvas.toDataURL('image/jpeg');
            //初始化pdf，设置相应格式
            var a=this.width;
            var b=this.height;
            if (a > b) {
                var doc = new jsPDF('l', 'mm', 'a4');
            } else {
                var doc = new jsPDF('p', 'mm', 'a4');//595.28, 841.89]);
            }
            doc.addImage(imgData, 'jpeg', 0, 0, 250,180);
            //根据下载保存成不同的文件名
            doc.save('report_pdf_' + new Date().getTime() + '.pdf');
            //var doc = new jsPDF("p", "mm", "a4");

            //这里设置的是a4纸张尺寸
           // doc.addImage(imgData, 'JPEG', 0, 0,210,297);
            //输出保存命名为content的pdf
            //doc.save('content.pdf');
        },
        background: "#fff",
        allowTaint: true
        //,
        //
    });
};