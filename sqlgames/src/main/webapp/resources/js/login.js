$(document).ready(function(){
    $(".infofound").click(function(event){
        event.preventDefault();
        $(".tab_content").addClass("active");
    });
    
    $(".pop_clo").click(function(event){
        event.preventDefault();
        $(".tab_content").removeClass("active");
    });

});

