/**
 * sweetAlert - alert
 * str 顯示訊息
 * isSuccess 成功或失敗
 */
function sAlert(str, isSuccess, callback){
    var typeName = '';
    if(typeof isSuccess != 'undefined' && isSuccess){
        typeName = 'success';
    }else{
        typeName = 'error';
    }
    swal({'text':str, customClass:'swalLabelText', allowOutsideClick: false, type:typeName}).then(function(){
        if(typeof callback != 'undefined'){
            callback();
        }
    });
}

/**
 *
 * @param str 顯示字串
 */
function sNumberAlert(str, callback){
    swal({
        title: str,
        input: 'number',
        showCancelButton: true,
        confirmButtonText: 'Yes',
        cancelButtonText: 'No',
        allowOutsideClick: false
    }).then(function(number) {
        if(typeof callback != 'undefined'){
            callback(number);
        }
    })
}

/**
 *
 * @param str 顯示字串
 */
function sHTMLAlert(str, $html, sweetAlertAttr){
    swal({
        title: str,
        html: $html,
        showCancelButton: true,
        confirmButtonText: 'Yes',
        cancelButtonText: 'No',
        allowOutsideClick: false,
        customClass: 'mySwal',
        onOpen : function(){
            $swal = $(".mySwal");
            $swalConfirmBtn = $swal.find('.swal2-confirm');
            $swal.find('.numInput').bind('change', function(){
                numberTagProcess($(this));
            });
            $swal.find('.numInput').bind('keyup', function(){
                numberTagProcess($(this));
            });
            $swal.find('.numInput').bind('mousedown', function(){
                numberTagProcess($(this));
            });
            $swal.find(".floatInput").bind('change', function(){
                floatTagProcess($(this));
            });
            $swal.find(".floatInput").bind('keyup', function(){
                floatTagProcess($(this));
            });
            $swal.find(".floatInput").bind('mousedown', function(){
                floatTagProcess($(this));
            });
            $swal.find(".notEmpty").bind('change', function(){
                notEmptyTagProcess($swal, $swalConfirmBtn);
            });
            $swal.find(".notEmpty").bind('keyup', function(){
                notEmptyTagProcess($swal, $swalConfirmBtn);
            });
            $swal.find(".notEmpty").bind('mousedown', function(){
                notEmptyTagProcess($swal, $swalConfirmBtn);
            });
            if(typeof sweetAlertAttr.openCallback != 'undefined'){
                sweetAlertAttr.openCallback();
            }
            if($swal.find('.notEmpty').length != 0){
                $swalConfirmBtn.prop('disabled', true);
                notEmptyTagProcess($swal, $swalConfirmBtn);
            }
        },
        width : sweetAlertAttr.width
    }).then(function(isConfirm) {
        if(isConfirm == true){
            if(typeof sweetAlertAttr.confirmCallback != 'undefined'){
                sweetAlertAttr.confirmCallback();
                sweetAlertAttr = new SweetAlertAttribute();
            }
        }
        sweetAlertAttr = new SweetAlertAttribute();
    }, function(dismiss){
        if (dismiss === 'cancel') {
            if(typeof sweetAlertAttr.cancelCallBack != 'undefined'){
                sweetAlertAttr.cancelCallBack();
                sweetAlertAttr = new SweetAlertAttribute();
            }
        } else {
            sweetAlertAttr = new SweetAlertAttribute();
            throw dismiss;
        }
    });
}

/**
 *
 * @param str 顯示字串
 */
function sHTMLAlertWithNoCancel(str, html, sweetAlertAttr){
    
    swal({
        title: str,
        html: html,
        width : sweetAlertAttr.width,
        confirmButtonText: sweetAlertAttr.confirmButtonText,
        allowOutsideClick: false,
        customClass:'mySwal',
        type : sweetAlertAttr.successText
    }).then(function() {
        if(typeof sweetAlertAttr.callback != 'undefined'){
            sweetAlertAttr.callback();
        }
    })
}

/**
 *
 * @param str 顯示字串
 */
function sTextAlert(str, html, callback){
    
    swal({
        title: str,
        text: html,
        showCancelButton: true,
        confirmButtonText: 'Yes',
        cancelButtonText: 'No',
        allowOutsideClick: false
    }).then(function() {
        if(typeof callback != 'undefined'){
            callback();
        }
    })
}

/**
 *
 * @param str
 * @param callback
 */
function sConfirm(str, callback){
    swal({
        title: str,
        showCancelButton: true,
        confirmButtonText: 'Yes',
        cancelButtonText: 'No',
        allowOutsideClick: false
    }).then(function() {
        callback();
    })
}

function ajaxReloadMovement(result){
    sweetAlertAttr.width = '100%';
    sweetAlertAttr.setSuccess(result['success']);
    sweetAlertAttr.callback = function(){
        if(result['success']){
            reloadView();
        }
    }
    sHTMLAlertWithNoCancel('', getSwalTextSpan(result['msg'], 'swalLabelText h1'), sweetAlertAttr);
}
function ajaxMovement(result){
    sweetAlertAttr.width = '100%';
    sweetAlertAttr.setSuccess(result['success']);
    sHTMLAlertWithNoCancel('', getSwalTextSpan(result['msg'], 'swalLabelText h1'), sweetAlertAttr);
}
