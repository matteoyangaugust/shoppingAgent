$(function(){
    removeAddBtn();
    sortingMethod('name', 'price', 'category', 'update_time');
    filterAssigner('name_search', 'category', 'gender', 'sorting',
        'sorting_direction');
    $(".items").bind('click', function(){
        showItem();
    });
});

function showItem(){
    sweetAlertAttr.width = '100%';
    sweetAlertAttr.confirmButtonText = 'Back';
    var $itemInfoTmpForm = $(".itemInfoTmp").clone(true);
    sHTMLAlertWithNoCancel("", $itemInfoTmpForm, sweetAlertAttr);
    $swal = $(".mySwal");
    showItemEvent();

    function showItemEvent(){
        $swal.find('#color').bind('change', function(){
            colorSelectedEvent($(this));
        });
        $swal.find('.reserve').bind('click', function(){
            $swal.find('.itemInfoTmp').submit();
        });
    }
}

function colorSelectedEvent($colorSelector){
    if($colorSelector.val() == 'none'){
        $("#size").hide();
    }else{
        $("#size").show();
    }
}