$(function(){
    sortingMethod('name', 'category_sn', 'default_selling_price');
    filterAssigner('brand', 'name_search', 'category', 'gender', 'sorting', 'addBtn');
    bindSortingMethod('items', 'itemsRow');
    $("img").lazyload({ threshold : 200 });
    $("#addBtn").bind('click', function(){
        addItem();
    });
    $(".items").bind('click', function(){
        editItem($(this));
    });
    $('.filterSelect').bind('change', function(){
        bindChangeFilterSelectEvent();
    });
    $("#name_search_input").bind('change', function(){
        bindChangeFilterSelectEvent();
    });
    $("#name_search_input").bind('keyup', function(){
        bindChangeFilterSelectEvent();
    });
    $("#name_search_input").bind('mousedown', function(){
        bindChangeFilterSelectEvent();
    });
});

/**
 * filter事件、 keyword事件
 */
function bindChangeFilterSelectEvent(){
    var selectedItems = new Array();
    var brand_sn = $('#brandSelect').val();
    var category_sn = $("#categorySelect").val();
    var gender = $("#genderSelect").val();
    var keyword = $("#name_search_input").val();
    //篩選合格的Item
    $.each(items, function(index, item){
        var isValid = true;
        if(brand_sn != 'all' && brand_sn != item['brand_sn']){
            isValid = false;
        }
        if(category_sn != 'all' && category_sn != item['category_sn']){
            isValid = false;
        }
        if(gender != 'all' && gender != item['gender']){
            isValid = false;
        }
        if(!isEmptyString(keyword) && item['name'].toLowerCase().toLocaleLowerCase().indexOf(keyword) == -1){
            isValid = false;
        }
        if(isValid){
            selectedItems.push(item);
        }
    });
    //show or hide
    $('.attributes').each(function(){
        var $attribute = $(this);
        var isValid = false;
        $.each(selectedItems, function(index, selectedItem){
            if($attribute.find('.sn').val() == selectedItem['sn']){
                isValid = true;
                return false;
            }
        });
        if(isValid){
            $attribute.closest('.items').show();
        }else{
            $attribute.closest('.items').hide();
        }
    });
}

function editItem($item){
    sweetAlertAttr.width = '100%';
    sweetAlertAttr.openCallback = openCallback;
    sweetAlertAttr.confirmCallback = confirmCallback;
    var $itemDetailTemp = $(".itemDetailTemp").clone(true);
    $itemDetailTemp.find('.add_item_label').hide();
    sHTMLAlert("", $itemDetailTemp, sweetAlertAttr);
    $swal = $(".mySwal");
    setEvent();
    function confirmCallback(){
        var $itemForm = $swal.find('#addItemInfo');
        var formData = new FormData();
        formData.append('sn', $item.find('.sn').val());
        var allow_size = $swal.find('.allow_size').val();
        var allow_color = $swal.find('.allow_color').val();
        //將所有input值加入formData
        {
            $itemForm.find('input, select, textarea').each(function(){
                var $input = $(this);
                if($input.attr('type') == 'checkbox' || $input.attr('type') == 'radio'){
                    if($input.prop('checked')){
                        formData.append($input.attr('name'), $input.val());
                    }
                }else{
                    formData.append($input.attr('name'), $input.val());
                }
            });
        }
        //將新照片加入formData裡面
        {
            $swal.find('.photo').each(function(){
                var $photo = $(this);
                if($photo.siblings('.photoSn').val() == '0'){
                    formData.append('files', $photo[0].files[0]);
                }
            });
        }
        //Checking Change
        {
            var isItemDetailChange
            $.each(items, function(index, item){
                if(item['sn'] == $item.find('.sn').val()){
                    //將移除的照片加入formData的刪除紀錄
                    {
                        $.each(item['photos'], function(indexA, photo){
                            if($swal.find('.photoSn[value="' + photo['sn'] + '"]').length == 0){
                                formData.append('photosToDelete', photo['sn']);
                            }
                        });
                    }
                    //Check size and color是否有改變
                    {
                        if(allow_size != item['allow_size']){

                        }
                        if(allow_color != item['allow_color']){

                        }
                    }
                    return false;
                }
            });
        }
        //上傳更新的資料
        formDataAjax(ctxPath + 'manage/item/update.do', formData, function(result){
            ajaxReloadMovement(result);
        });
    }
    function openCallback(){
        $.each(items, function(index, item){
            if(item['sn'] == $item.find('.sn').val()){
                putValueToInputs($swal.find('.itemDetailTemp'), item);
                $.each(item['photos'], function(index, photo){
                    var $wrapper = addPhoto();
                    var $image_holder = $wrapper.find('.image-holder');
                    $image_holder.find(".addImagePlus").hide();
                    $image_holder.append($("<img />", {
                        "src": 'data:image/png;base64,' + photo['base_64_photo'],
                        "class": "thumb-image tempImage"
                    }));
                    $wrapper.find('.photoSn').val(photo['sn']);
                });
                return false;
            }
        });
    }
}

function addItem(){
    sweetAlertAttr = new SweetAlertAttribute();
    sweetAlertAttr.width = '100%';
    sweetAlertAttr.confirmCallback = confirmCallback;
    var $itemDetailTemp = $(".itemDetailTemp").clone(true);
    $itemDetailTemp.find('.edit_item_label').hide();
    $itemDetailTemp.find('.settingMethod').closest('label').hide();
    sHTMLAlert("", $itemDetailTemp, sweetAlertAttr);
    $swal = $(".mySwal");
    setEvent();
    function confirmCallback(){
        var $itemForm = $swal.find('#addItemInfo');
        var formData = new FormData();
        $itemForm.find('input, select, textarea').each(function(){
            var $input = $(this);
            if($input.attr('type') == 'checkbox' || $input.attr('type') == 'radio'){
                if($input.prop('checked')){
                    formData.append($input.attr('name'), $input.val());
                }
            }else{
                formData.append($input.attr('name'), $input.val());
            }
        });
        $swal.find('.photo').each(function(){
            var $photo = $(this);
            formData.append('files', $photo[0].files[0]);
        });
        formDataAjax(ctxPath + 'manage/item/insert.do', formData, function(result){
            ajaxReloadMovement(result);
        });
    }
}

function setEvent(){
    // $swal.find('#addColorBtn').unbind('click').bind('click', function(){
    //
    // });
    $swal.find('.settingMethod').closest('label').bind('click', function(){
        var method = $(this).find('.settingMethod').val();
        if(method == 'default'){
            $swal.find('#addArea').show();
            $swal.find('#stockArea').hide();
        }else{
            $swal.find('#addArea').hide();
            $swal.find('#stockArea').show();
        }
    });

    $swal.find('#addPhotoBtn').bind('click', function(){
        addPhoto();
    });

    $swal.find('.toCalculate').bind('keyup', function(){
        calculateFixedPrice();
    });
    $swal.find('.toCalculate').bind('change', function(){
        calculateFixedPrice();
    });
    $swal.find('.toCalculate').bind('mousedown', function(){
        calculateFixedPrice();
    });
    // $swal.find('#useColor').bind('change', function(){
    //     useColor();
    // });
    // $swal.find('#useSize').bind('change', function(){
    //     useSize();
    // });
    //
    // function useColor(){
    //     var $useColor = $swal.find('#useColor');
    //     isComplexity();
    //     if($useColor.prop('checked') == false){
    //         $swal.find('.showColor').hide();
    //     }else{
    //         $swal.find('.showColor').show();
    //     }
    // }
    //
    // function useSize(){
    //     var $useSize = $swal.find('#useSize');
    //     isComplexity();
    //     if($useSize.prop('checked') == false){
    //         $swal.find('.showSize').hide();
    //     }else{
    //         $swal.find('.showSize').show();
    //     }
    // }
    //
    // function isComplexity(){
    //     var $useColor = $swal.find('#useColor');
    //     var $useSize = $swal.find('#useSize');
    //     if($useColor.prop('checked') == false && $useSize.prop('checked') == false){
    //         $swal.find('.withoutComplexity').show();
    //         $swal.find('.withComplexity').hide();
    //     }else{
    //         $swal.find('.withoutComplexity').hide();
    //         $swal.find('.withComplexity').show();
    //     }
    // }
}

function calculateFixedPrice(){
    var fixedPrice = 0;
    $swal.find('.toCalculate').each(function(){
        var $moneyTag = $(this);
        var money = parseInt($moneyTag.val());
        if($moneyTag.hasClass('usd')){
            money = Math.round(FloatNumber.mul(money, 30.5));
        }
        if(isEmptyString(money) || isNaN(money)){
            money = 0;
        }
        fixedPrice += money;
    });
    $swal.find('.default_fixed_price').val(fixedPrice);
}

function addPhoto(){
    var $wrapper = $('#template').find(".image-wrapper").clone(true);
    var $photoGroup = $swal.find('#photoGroup');
    $photoGroup.prepend($wrapper);
    bindEvent();
    $wrapper.animate({
        opacity : 1
    }, 500, 'easeInOutQuint');
    return $wrapper;
    function bindEvent(){
        var $holder = $wrapper.find('.image-holder');
        imageHover($holder);
        imageEvent($holder, $wrapper);
        var $removeBtn = $wrapper.find('.removeWrapper');
        $removeBtn.bind('click', function(){
            $wrapper.remove();
        });
    }
}


