var deletedImage = new Array();
var closeCallback;

function uploadEvent(){
    $swal.find("#addHolder").bind('click', function(){
        addWrapper();
    });
    $swal.find("#sendImages").bind('click', function(){
        sendImages();
    });
    $swal.find("#cancelImage").bind('click', function(){
        cancelImage();
    });
}

function closeUploadImageModalEvent(callback){
    closeCallback = callback;
}

function cancelImage(){
    if(typeof closeCallback != 'undefined'){
        closeCallback();
    }
    $swal.find(".removeWrapper").remove();
    $swal.find(".wrapper").remove();
    $swal.find("input[name='deletedImageSn']").val('');
}

function sendImages(){
    $swal.find(".photo").each(function(){
        var $this = $(this);
        var photoSn = $this.siblings('.photoSn').val();
        if(photoSn == 0 && isNothingStrValue($this.val())){
            $this.closest('.wrapper').prev('.removeWrapper').remove();
            $this.closest('.wrapper').remove();
        }
    });
    $swal.find("input[name='deletedImageSn']").val(deletedImage.toString());
    $swal.find("#imageForm").submit();
}

function addWrapper(){
    var $removeWrapper = $("<button>", {type:'button', 'class':'btn btn-danger mb-0 w-25 removeWrapper'}).append($('<i>',{'class':'fa fa-trash-o fa-3x'}));
    $swal.find("#wrapperParent").append($removeWrapper);
    var $wrapper = $('<div>', {'class':'wrapper mt-0 mb-4 col-sm-8', style:'opacity:0'});
    $wrapper.appendTo($swal.find("#wrapperParent")).fadeIn('slow');
    createImageUploader($wrapper);
    $wrapper.animate({
        opacity: 1,
    }, 1000);
    $removeWrapper.bind('click', function(){
        if($wrapper.find('.photoSn').val() != 0){
            deletedImage.push($wrapper.find('.photoSn').val());
        }
        $wrapper.remove();
        $removeWrapper.remove();
    });
    return $wrapper;
}

function initStoredImages(images, courseSn){
    images.forEach(function(image, index){
        var $wrapper = addWrapper();
        var $image_holder = $wrapper.find(".image-holder");
        var $fileInput = $wrapper.find('input[name="image"]');
        $fileInput.bind('change', function(){
            deletedImage.push(image['sn']);
        });
        $fileInput.attr('name', 'notUpload');
        $wrapper.find('.photoSn').val(image['sn']);
        $image_holder.find('.tempImage').remove();
        $image_holder.append($("<img />", {
            "src": ctxPath + 'images/course/' + courseSn + "/" + image['imageName'],
            "class": "thumb-image tempImage"
        }));
        $image_holder.find(".addImage").hide();
        $image_holder.show();
    });
}