$(function(){
    sortingMethod('name');
    filterAssigner('name_search', 'sorting');
    $('.showGoods').bind('click', function(){
        showGoods();
    });
    $('#addBrand').bind('click', function(){
        addBrand();
    });
    $(".modifyBtn").bind('click', function(){
        modifyBrand($(this));
    });
    $('.inactivateBtn').bind('click', function(){
        inactivateBrand($(this));
    });
    bindSearchEventWithFilter($('#name_search_input'), 'name', 'brand');
    bindSortingMethod('brand', 'brands');
});

function inactivateBrand($evtBtn){
    var $brandForm = $evtBtn.closest('.brand').find('.brandForm');
    ajax(ctxPath + 'manage/brand/inactivating.do', $brandForm.serializeArray(), function(result){
        sweetAlertAttr.width = '100%';
        sweetAlertAttr.setSuccess(result['success']);
        sweetAlertAttr.callback = function(){
            $brandForm.closest('.brand').remove();
        }
        sHTMLAlertWithNoCancel('', getSwalTextSpan(result['msg'], 'h3 swalLabelText'), sweetAlertAttr);
    });
}

function modifyBrand($evtBtn){
    var $brandForm = $evtBtn.closest('.brand').find('.brandForm');
    if(checkFormInputValid($brandForm)){
        ajax(ctxPath + 'manage/brand/modify.do', $brandForm.serializeArray(), function(result){
            sweetAlertAttr.width = '100%';
            sweetAlertAttr.setSuccess(result['success']);
            sHTMLAlertWithNoCancel('', getSwalTextSpan(result['msg'], 'h3 swalLabelText'), sweetAlertAttr);
        });
    }
}

function addBrand(){
    sweetAlertAttr.width = '100%';
    sweetAlertAttr.confirmCallback = confirmCallback;
    sweetAlertAttr.openCallback = openCallback;
    var $addBrandForm = $("#addBrandForm").clone(true);
    sHTMLAlert('', $addBrandForm, sweetAlertAttr);
    function openCallback(){
        var $brandName = $swal.find('.brandName');
        textInputFillingHandler($swal.find('.brandName'), function(){
            $swalConfirmBtn.prop('disabled', isEmptyString($brandName.val()));
        });
    }
    function confirmCallback(){
        var brandName = $swal.find(".brandName").val();
        ajax(ctxPath + 'manage/brand/insert.do', {
            name : brandName
        }, function(result){
            ajaxReloadMovement(result);
        });
    }
}

function showGoods(){
    sweetAlertAttr.width = '100%';
    var $goodsTemplate = $('#template').find('.itemsBlock').clone(true);
    sHTMLAlert('', $goodsTemplate, sweetAlertAttr);
}