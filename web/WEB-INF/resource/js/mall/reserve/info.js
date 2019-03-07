$(function(){
    $('#submit').bind('click', function(){
        submitReservation();
    });
});

function submitReservation(){
    sweetAlertAttr.width = '100%';
    sweetAlertAttr.confirmButtonText = 'Yes';
    sweetAlertAttr.callback = callback;
    var $successTemplate = $('#template').find('.reserveSuccessTamplate').clone(true);
    sHTMLAlertWithNoCancel('', $successTemplate, sweetAlertAttr);

    function callback(){
        window.location = ctxPath + 'mall/shopping/items.do';
    }
}