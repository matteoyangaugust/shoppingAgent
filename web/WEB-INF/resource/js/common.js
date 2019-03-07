function formDataAjax(url, data, fn){
    $("#dimScreen").show();
    $.ajax({
        url: url,
        type: 'POST',
        datatype: 'json',
        data: data,
        cache:false,
        traditional: true,
        contentType: false,
        processData: false,
        success: fn,
        error: function(jqXHR, textStatus, errorThrown){
            alert('occur ajax erroe, type : ' + textStatus);
        },
        complete: function (xhr, status) {
            $("#dimScreen").hide();
        }
    });
}
function fileAjax(url, formData, doneCallback, failCallback){
    $.ajax({
        url: url,
        type: 'POST',
        cache: false,
        data: formData,
        processData: false,
        contentType: false
    }).done(function(res) {
        doneCallback(res);
    }).fail(function(res) {
        failCallback(res);
    });
}
function ajax(url, data, fn){
    $("#dimScreen").show();
    $.ajax({
        url: url,
        type: 'POST',
        cache : false,
        dataType: 'json',
        data: data,
        success: fn,
        headers: {'X-Requested-With': 'XMLHttpRequest'},
        error : function(jqXHR, textStatus, errorThrown){
            alert('occur ajax erroe, type : ' + textStatus);
        },
        complete: function (xhr, status) {
            $("#dimScreen").hide();
        }
    });
}

function ajaxasy(url, data, async , fn){
    $("#dimScreen").show();
    $.ajax({
        url: url,
        type: 'POST',
        async : async,
        cache : false,
        dataType: 'json',
        data: data,
        headers: {'X-Requested-With': 'XMLHttpRequest'},
        success: fn,
        error : function(jqXHR, textStatus, errorThrown){
            alert('occur ajax error, type : ' + textStatus);
        },
        complete: function (xhr, status) {
            $("#dimScreen").hide();
        }
    });
}

function ajaxasyJson(url, data, async , fn){
    $.ajax({
        url: url,
        type: 'POST',
        async : async,
        cache : false,
        dataType: 'json',
        contentType: 'application/json',
        mimeType: 'application/json',
        data: data,
        success: fn,
        error : function(jqXHR, textStatus, errorThrown){
            alert('occur ajax error, type : ' + textStatus);
        },
        complete: function (xhr, status) {

        }
    });
}

/**
 * 取得Object Size
 * @param obj
 * @returns {number}
 */
function getObjectSize(obj){
    var size = 0, key;
    for (key in obj) {
        if (obj.hasOwnProperty(key)) size++;
    }
    return size;
}

/**
 * 讓input tag為Number only
 * @param $inputTag
 */
function numberTagProcess($inputTag){
    removeNoneNumberCharacter($inputTag);
    removeLeadingZero($inputTag);
    autoFillingZeroIdEmpty($inputTag);
}

/**
 * 將object塞進Array
 * @param arr
 * @param item
 * @param itemIndex
 * @returns {Array}
 */
function pushItemToArr(arr, item, itemIndex){
    var newArr = new Array();
    for(var i=0; i < arr.length; i++){
        if(i == itemIndex){
            newArr.push(item);
        }
        newArr.push(arr[i]);
    }
    return newArr;
}

/**
 * 刪除逗點
 * @param str
 * @returns {string|void|XML}
 */
function delDot(str){
    return str.replace(/,/g,"");
}

/**
 * 讓input tag為Float only
 * @param $inputTag
 */
function floatTagProcess($inputTag){
    var firstDotIndex = $inputTag.val().indexOf('.');
    if(!isFloat($inputTag.val())){
        removeNoneNumberCharacter($inputTag);
        var strArray = $inputTag.val().split('');
        if(firstDotIndex != -1){
            strArray = pushItemToArr(strArray, '.', firstDotIndex);
        }
        $inputTag.val(strArray.join(''));
    }else{
        if(firstDotIndex == -1){
            removeLeadingZero($inputTag);
        }else{
            if($inputTag.val() < 1){
                if(firstDotIndex != 1){
                    $inputTag.val(Number($inputTag.val()));
                }
            }
        }
    }
    autoFillingZeroIdEmpty($inputTag);
}

function notEmptyTagProcess($swal, $swalConfirmBtn) {
    var isValid = true;
    $swal.find('.notEmpty').each(function(){
        var $this = $(this);
        if(isEmptyString($this.val())){
            isValid = false;
            return false;
        }
    });
    $swalConfirmBtn.prop('disabled', !isValid);
}

/**
 * 將input tag為Number Only 並無初始值0
 * @param $inputTag
 */
function numberTagProcessNoInit($inputTag){
    removeNoneNumberCharacter($inputTag);
    removeLeadingZero($inputTag);
}

/**
 * 限制此tag只能是數字
 * @param $inputTag --jquery input 物件
 */
function removeNoneNumberCharacter($inputTag){
    $inputTag.val($inputTag.val().replace(/\D|/g,''));
}

//去數字最高位數的0
function removeLeadingZero($inputTag) {
    $inputTag.val($inputTag.val().replace(/^0+/, ''));
}

//如果該input為空 自動補0
function autoFillingZeroIdEmpty($input){
    if($input.val() == ''){
        $input.val(0);
    }
}

/**
 * 檢查字串是否是空的
 * @param str
 * @returns {boolean}
 */
function isNothingStrValue(str){
    if(typeof str == 'undefined'){
        return true;
    }else if(str == null){
        return true;
    }else if(str == ''){
        return true;
    }else{
        return false;
    }
}

/**
 * 身分證ID驗證
 * @param id
 * @returns {boolean}
 */
function checkID( id ) {
    tab = "ABCDEFGHJKLMNPQRSTUVXYWZIO"
    A1 = new Array (1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3 );
    A2 = new Array (0,1,2,3,4,5,6,7,8,9,0,1,2,3,4,5,6,7,8,9,0,1,2,3,4,5 );
    Mx = new Array (9,8,7,6,5,4,3,2,1,1);

    if ( id.length != 10 ) return false;
    i = tab.indexOf( id.charAt(0) );
    if ( i == -1 ) return false;
    sum = A1[i] + A2[i]*9;

    for ( i=1; i<10; i++ ) {
        v = parseInt( id.charAt(i) );
        if ( isNaN(v) ) return false;
        sum = sum + v * Mx[i];
    }
    if ( sum % 10 != 0 ) return false;
    return true;
}

/**
 * 將html form打包成object
 * @param $form
 * @returns {Object}
 */
function formToObj($form){
    var obj = new Object();
    $form.find('input').each(function(){
        var $input = $(this);
        obj[$input.name] = $input.val();
    });
    return obj;
}

/**
 * Email Check
 * @param remail
 * @returns {boolean}
 */
function checkEmail(remail) {
    if (remail.search(/^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$/)!=-1) {
        return true;
    } else {
        return false;
    }
}

/**
 * 取得input file name
 * @param $input
 * @returns {string}
 */
function getFileName($input){
    var fullPath = $input.val();
    if (fullPath) {
        var startIndex = (fullPath.indexOf('\\') >= 0 ? fullPath.lastIndexOf('\\') : fullPath.lastIndexOf('/'));
        var filename = fullPath.substring(startIndex);
        if (filename.indexOf('\\') === 0 || filename.indexOf('/') === 0) {
            filename = filename.substring(1);
        }
        return filename;
    }
}

function getFileExtension(fileName){
    var lastIndex = fileName.lastIndexOf(".");
    if (lastIndex < 1) return "";
    return fileName.substr(lastIndex + 1);
}

/**
 * 預覽Image
 * @param $imageInput
 * @param $image_holder
 */
function previewImage($imageInput, $image_holder){
    var extension = getFileExtension(getFileName($imageInput.attr('id'))).toLowerCase();
    if(extension != 'png' && extension != 'jpg'
        && extension != 'jpeg' && extension != 'bmp'
        && extension != 'pcx'
        && extension != 'gif'){
        swal({'title':'格式錯誤'});
        return;
    }
    if (typeof (FileReader) != "undefined") {
        $image_holder.find('.tempImage').remove();
        var reader = new FileReader();
        reader.onload = function (e) {
            $image_holder.append($("<img />", {
                "src": e.target.result,
                "class": "thumb-image tempImage"
            }));
        }
        if(typeof $imageInput[0].files[0] != 'undefined'){
            $image_holder.find(".addImage").hide();
        }else{
            $image_holder.find(".addImage").show();
        }
        $image_holder.show();
        reader.readAsDataURL($imageInput[0].files[0]);
    } else {
        alert("This browser does not support FileReader.");
    }
}

/**
 * 是否為PC
 * @returns {boolean}
 */
function isDesktop(){
    if ( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
        return false;
    }
    else {
        return true;
    }
}

/**
 * 將form打包成Map
 * @param formArray
 * @returns {{}}
 */
function objectifyForm(formArray) {//serialize data function

    var returnArray = {};
    for (var i = 0; i < formArray.length; i++){
        returnArray[formArray[i]['name']] = formArray[i]['value'];
    }
    return returnArray;
}

/**
 * 取得Object裡面的property打包成Array
 * @param obj
 * @returns {Array}
 */
function getPropertiesArray(obj){
    var arr = new Array();
    for (var property in obj) {
        if (obj.hasOwnProperty(property)) {
            arr.push(property);
        }
    }
    return arr;
}

/**
 * 移除Array裡特定項目
 * @param arr
 * @param removeItem
 * @returns {*}
 */
function removeArrayItem(arr, removeItem){
    return $.grep(arr, function(value) {
        return value != removeItem;
    });
}

/**
 * 20170101 -> 2017年01月01日
 * @param date
 */
function dateFormat(date){
    return date.substring(0, 4) + '年' +
        date.substring(4, 6) + '月' +
        date.substring(6) + '日'
}

/**
 * 產生guid
 * @returns {string}
 */
function guid() {
    function s4() {
        return Math.floor((1 + Math.random()) * 0x10000)
            .toString(16)
            .substring(1);
    }
    return s4() + s4() + '-' + s4() + '-' + s4() + '-' +
        s4() + '-' + s4() + s4() + s4();
}

/**
 *
 * @param errorStr
 */
function notEmptyCheck(errorStr){
    var isValid = true;
    $(".notEmpty").each(function(){
        var $this = $(this);
        if(isNothingStrValue($this.val())){
            errorStr += $this.attr("aria-describedby") + "未填寫\n";
            isValid = false;
        }
    });
    return isValid;
}

/**
 * 檢查obj是否為空字串
 * @param obj
 * @returns {*}
 */
function isEmptyString(obj){
    if(typeof obj == 'undefined' || obj == null || obj == ''){
        return true;
    }else{
        return false;
    }
}


function getSwalTextSpan(text, className){
    if(typeof className == 'undefined'){
        className = 'swalLabelText';
    }
    return "<span class='" + className + "'>" + text + "</span>";
}

/**
 * 是否為手機
 * @returns {boolean}
 */
window.isMobile = function() {
    var check = false;
    (function(a){if(/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|mobile.+firefox|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows ce|xda|xiino/i.test(a)||/1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(a.substr(0,4))) check = true;})(navigator.userAgent||navigator.vendor||window.opera);
    return check;
};

/**
 * 用秒數轉出實際時間單位的Bean
 * @param second
 */
function timeCovert(second){
    var timeBean = new Object();
    timeBean.day = Math.floor(second/60/60/24);
    timeBean.hour = Math.floor(second/60/60)%24;
    timeBean.minute = Math.floor(second/60)%60;
    timeBean.second = Math.floor(second%60);
    return timeBean;
}

/**
 * 用JavaBean轉成秒數
 * @param second
 * @returns {Object}
 */
function timeCovertToSecond(timeBean){
    return timeBean.day*60*60*24 + timeBean.hour*60*60 + timeBean.minute*60 + timeBean.second;
}


/**
 * 取得當天字串
 * @returns {Object}
 */
function getToday(){
    var d = new Date();
    var dateObj = new Object();
    dateObj.year = d.getFullYear();
    dateObj.month = d.getMonth()+1;
    dateObj.date = d.getDate();
    return dateObj;
}

/**
 * 是否為Float
 * @param n
 * @returns {boolean}
 */
function isFloat(n){
    return Number(n) == n;
}

/**
 * Enter鍵無效
 */
function disableEnterKey(){
    $('html').bind('keypress', function(e)
    {
        if(e.keyCode == 13)
        {
            return false;
        }
    });
}

/**
 * 取得spring message
 * @param messageCode
 */
function getSpringMessage(messageCode){
    var message = '';
    ajaxasy(ctxPath + 'common/getSpringMessage.do', {
        code : messageCode
    }, false, function(result){
        message = result['msg'];
    });
    return message;
}

function textInputFillingHandler($input, callback){
    $input.bind('keyup', function(){
        callback();
    });
    $input.bind('mousedown', function(){
        callback();
    });
    $input.bind('change', function(){
        callback();
    });
}

function checkFormInputValid($form){
    var unfilledStr = getSpringMessage('notice.unfilled');
    var unselectedStr = getSpringMessage('notice.unselected');
    var errorStr = "";
    var isValid = true;
    $form.find(".notEmpty").each(function(){
        var $this = $(this);
        if(isNothingStrValue($this.val())){
            if($this.attr('type') == 'text'){
                errorStr += "*" + $this.attr("aria-describedby") + " " + unfilledStr + "\n";
            }else{
                errorStr += "*" + $this.attr("aria-describedby") + " " + unselectedStr + "\n";
            }
            isValid = false;
        }
    });
    if(!isValid){
        sweetAlertAttr.width = '100%';
        sweetAlertAttr.setSuccess(false);
        sHTMLAlertWithNoCancel('', getSwalTextSpan(errorStr, 'h3 swalLabelText'), sweetAlertAttr);
    }
    return isValid;
}

/**
 * 把物件裡的直放到對應的Input Tag裡面
 * @param $inputsWrapper
 * @param obj
 */
function putValueToInputs($inputsWrapper, obj){
    for (var property in obj) {
        if (obj.hasOwnProperty(property)) {
            $inputsWrapper.find('input[name="' + property + '"]').not('input[type="checkbox"]').not('input[type="radio"]').val(obj[property]);
            $inputsWrapper.find('input[name="' + property + '"]').each(function(){
                var $this = $(this);
                if($this.val() == obj[property]){
                    if($this.attr('type') == 'radio' || $this.attr('type') == 'checkbox'){
                        $this.trigger('click');
                    }
                }
            });
            $inputsWrapper.find('select[name="' + property + '"]').val(obj[property]);
            $inputsWrapper.find('textarea[name="' + property + '"]').text(obj[property]);
        }
    }
}


