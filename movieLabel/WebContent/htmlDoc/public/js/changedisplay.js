/**
 * Created by ThinkPad on 2017/3/20.
 */
function opendiv(id){
    if(id=='tab1') {
        $("#classtab1").addClass('active');
        $("#classtab2").removeClass('active');
        $("#classtab3").removeClass('active');
        $("#classtab4").removeClass('active');
        $("#classtab5").removeClass('active');
        $("#classtab6").removeClass('active');
        $('#tab1').css('display', 'block');
        $('#tab2').css('display', 'none');
        $('#tab3').css('display', 'none');
        $('#tab4').css('display', 'none');
        $('#tab5').css('display', 'none');
        $('#tab6').css('display', 'none');
    }
    if(id=='tab2') {
        $("#classtab2").addClass('active');
        $("#classtab1").removeClass('active');
        $("#classtab3").removeClass('active');
        $("#classtab4").removeClass('active');
        $("#classtab5").removeClass('active');
        $("#classtab6").removeClass('active');
        $('#tab2').css('display', 'block');
        $('#tab1').css('display', 'none');
        $('#tab3').css('display', 'none');
        $('#tab4').css('display', 'none');
        $('#tab5').css('display', 'none');
        $('#tab6').css('display', 'none');
    }
    if(id=='tab3') {
        $("#classtab3").addClass('active');
        $("#classtab1").removeClass('active');
        $("#classtab2").removeClass('active');
        $("#classtab4").removeClass('active');
        $("#classtab5").removeClass('active');
        $("#classtab6").removeClass('active');
        $('#tab3').css('display', 'block');
        $('#tab1').css('display', 'none');
        $('#tab2').css('display', 'none');
        $('#tab4').css('display', 'none');
        $('#tab5').css('display', 'none');
        $('#tab6').css('display', 'none');
    }
    if(id=='tab4') {
        $("#classtab4").addClass('active');
        $("#classtab1").removeClass('active');
        $("#classtab2").removeClass('active');
        $("#classtab3").removeClass('active');
        $("#classtab5").removeClass('active');
        $("#classtab6").removeClass('active');
        $('#tab4').css('display', 'block');
        $('#tab1').css('display', 'none');
        $('#tab2').css('display', 'none');
        $('#tab3').css('display', 'none');
        $('#tab5').css('display', 'none');
        $('#tab6').css('display', 'none');
    }
    if(id=='tab5') {
        $("#classtab5").addClass('active');
        $("#classtab1").removeClass('active');
        $("#classtab2").removeClass('active');
        $("#classtab3").removeClass('active');
        $("#classtab4").removeClass('active');
        $("#classtab6").removeClass('active');
        $('#tab5').css('display', 'block');
        $('#tab1').css('display', 'none');
        $('#tab2').css('display', 'none');
        $('#tab3').css('display', 'none');
        $('#tab4').css('display', 'none');
        $('#tab6').css('display', 'none');
    }
    if(id=='tab6') {
        $("#classtab6").addClass('active');
        $("#classtab1").removeClass('active');
        $("#classtab2").removeClass('active');
        $("#classtab3").removeClass('active');
        $("#classtab4").removeClass('active');
        $("#classtab5").removeClass('active');
        $('#tab6').css('display', 'block');
        $('#tab1').css('display', 'none');
        $('#tab2').css('display', 'none');
        $('#tab3').css('display', 'none');
        $('#tab4').css('display', 'none');
        $('#tab5').css('display', 'none');
    }
}

$(function(){
    var $div_li =$(". ul li");
    var $div_li2=$(".sec_bar ul li");
    $div_li.click(function(){
        var index=$div_li.index(this);
        $(this).addClass("active")
            .siblings().removeClass("active");
    });
    $div_li2.click(function(){
        var index=$div_li2.index(this);
        $(this).addClass("active")
            .siblings().removeClass("active");
        $(".movieinfo > div").eq(index).show()
            .siblings().hide();

    });
})