$(document).ready(function(){
    $(".image").mouseenter(function(){
        $(".overlay").show();
        $(".overlay").css("display","flex");
    });
    $(".overlay").mouseleave(function(){
        $(".overlay").hide();
    });
});