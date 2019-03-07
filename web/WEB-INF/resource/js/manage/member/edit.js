$(function(){
    sortingMethod('name', 'update_time', 'register_time');
    filterAssigner('name_search', 'sorting','addBtn');
    $("#addBtn").bind('click', function(){
      addMember();
    });
});

function addMember(){
    sweetAlertAttr.width = '100%';
    var $addItemForm = $(".addMemberTmp").clone(true);
    sHTMLAlert("", $addItemForm, sweetAlertAttr);
    $swal = $(".mySwal");
}