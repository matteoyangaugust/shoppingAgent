$(function(){
    $('.submit').bind('click', function(){
        $(this).closest('.reservation').submit();
    });
    $(".submitAll").bind('click', function(){
        $('.reservation').submit();
    });
    $('.delete').bind('click', function(){
        var $this = $(this);
        $this.closest('.reservation').fadeTo(1000 , 0, function() {
            $this.closest('.reservation').remove();
        })

    });
});