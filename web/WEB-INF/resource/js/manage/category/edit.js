$(function(){
    sortingMethod('name');
    filterAssigner('name_search', 'sorting', 'addBtn');
    $("#addCategory").bind('click', function(){
        addBtn();
    });
    $('.showGoods').bind('click', function(){
        showGoods();
    });
    $('.modify').bind('click', function(){
        modifyCategory($(this));
    });
    $('.delete').bind('click', function(){
        deleteCategory($(this));
    });
    bindSearchEventWithFilter($('#name_search_input'), 'name', 'category');
    bindSortingMethod('category', 'categories');
});

function showGoods(){
    sweetAlertAttr.width = '100%';
    var $goodsTemplate = $('#template').find('.itemsBlock').clone(true);
    sHTMLAlert('', $goodsTemplate, sweetAlertAttr);
}

function addBtn(){
    sweetAlertAttr.width = '100%';
    sweetAlertAttr.confirmCallback = confirmCallback;
    var $addCategoryForm = $(".addCategoryTmp").clone(true);
    sHTMLAlert("", $addCategoryForm, sweetAlertAttr);
    $swal = $(".mySwal");
    function confirmCallback(){
        var categoryName = $swal.find('.categoryName').val();
        ajax(ctxPath + '/manage/category/insert.do', {
            name : categoryName
        }, function(result){
            ajaxReloadMovement(result);
        });
    }
}

function modifyCategory($evtBtn){
    var $categoryForm = $evtBtn.closest('.category').find('.categoryFrom');
    ajax(ctxPath + '/manage/category/update.do', $categoryForm.serializeArray(), function(result){
        ajaxMovement(result);
    });
}

function deleteCategory($evtBtn){
    var $categoryForm = $evtBtn.closest('.category').find('.categoryFrom');
    ajax(ctxPath + '/manage/category/delete.do', $categoryForm.serializeArray(), function(result){
        ajaxMovement(result);
        if(result['success']){
            $evtBtn.closest('.category').remove();
        }
    });
}