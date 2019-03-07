$(function(){
    $('.subLink').bind('click', function(){
        submitViewBySubMenuLink($(this));
    }) ;
    $('.linkBtn').bind('click', function(){
        submitViewByMainMenuLink($(this));
    });
    $("#reload").bind('click', function(){
        reloadView();
    });
    $(".languageBtn").bind('click', function(){
        changeLanguage($(this));
    })
    $('#register').bind('click', function(){
        showRegisterPopUP();
    });
    $('#login').bind('click', function(){
        showLoginTemplate();
    });
    disableEnterKey();
});
function showLoginTemplate(){
    sweetAlertAttr.width = '100%';
    sweetAlertAttr.confirmCallback = confirmCallback;
    var $loginTemplate = $(".loginTemplate").clone(true);
    sHTMLAlert('', $loginTemplate, sweetAlertAttr);
    function confirmCallback(){
        var username = $swal.find('#j_username').val();
        var password = $swal.find('#j_password').val();
        console.log(username);
        console.log(password);
        ajax(ctxPath + '/j_spring_security_check', {
            j_username : username,
            j_password : password,
            ajax : true
        }, function(){
            alert(123)
        });
    }
}
function showRegisterPopUP(){
    sweetAlertAttr.width = '100%';
    sweetAlertAttr.confirmCallback = confirmCallback;
    var $registerTemplate = $(".registerDiv").clone(true);
    sHTMLAlert('', $registerTemplate, sweetAlertAttr);

    function confirmCallback(){
        sweetAlertAttr.confirmCallback = undefined;
        sweetAlertAttr.confirmButtonText = 'OK';
        var $context = $('<h1>', {'class':'text-center text-success', text:register_success_message});
        sHTMLAlertWithNoCancel('', $context, sweetAlertAttr);
    }
}
function changeLanguage($languageBtn){
    var url = menuRecord['subMenu']['url'].replace('/', '');
    if($languageBtn.val() == 'tw'){
        window.location = ctxPath + url + '?locale=zh_TW';
    }else{
        window.location = ctxPath + url + '?locale=en_US';
    }
}

function reloadView(){
    var $redirectForm = $("#redirectForm");
    var url = menuRecord['subMenu']['url'].replace('/', '');
    $redirectForm.find('#mainMenuSn').val(menuRecord['mainMenu']['sn']);
    $redirectForm.find('#subMenuSn').val(menuRecord['subMenu']['sn']);
    $redirectForm.attr('action', ctxPath + url);
    $redirectForm.submit();
}

function submitViewBySubMenuLink($subLinkBtn){
    var $redirectForm = $("#redirectForm");
    var url = $subLinkBtn.siblings('.subUrl').val().replace('/', '');
    $redirectForm.find('#mainMenuSn').val(menuRecord['mainMenu']['sn']);
    $redirectForm.find('#subMenuSn').val($subLinkBtn.val());
    $redirectForm.attr('action', ctxPath + url);
    $redirectForm.submit();
}

function submitViewByMainMenuLink($mainLinkBtn){
    var $redirectForm = $("#redirectForm");
    var url = $mainLinkBtn.find('.url').val().replace('/', '');
    $redirectForm.find('#mainMenuSn').val($mainLinkBtn.find('.mainMenuSn').val());
    $redirectForm.find('#subMenuSn').val($mainLinkBtn.find('.subMenuSn').val());
    $redirectForm.attr('action', ctxPath + url);
    $redirectForm.submit();
}
