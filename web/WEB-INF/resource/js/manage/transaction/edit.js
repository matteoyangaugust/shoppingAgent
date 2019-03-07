$(function(){
    filterAssigner('reservation_num_search', 'filter_reservation');
    $("#transaction").bind('change', function(){
        showTransaction($(this));
    });
    $('.showReservation').bind('click', function(){
        showReservation();
    });
    $('#createTransaction').bind('click', function(){
        createTransaction();
    });
    $("#importReservation").bind('click', function(){
        showReservations();
    });
    $("#closeTransaction").bind('click', function(){
        closeTransaction();
    });
});
function closeTransaction(){
    sweetAlertAttr.width = '100%';
    sweetAlertAttr.confirmCallback = confirmCallback;
    sHTMLAlert('', $('<h3>', {'class':'swalLabelText', text:transaction_close_confirm_message}), sweetAlertAttr);
    function confirmCallback(){
        $('#transaction').find('option[value="none"]').prop('selected', true);
        $('.reservations').hide();
        $("#closeTransaction").prop('disabled', true);
        $("#importReservation").prop('disabled', true);
    }
}
function createTransaction(){
    sweetAlertAttr.width = '100%';
    sweetAlertAttr.confirmCallback = confirmCallback;
    var $div = $('<div>', {'class':'col-sm-12 text-center'})
    var $title = $('<h1>', {'class':'swalLabelText'}).text(create_transaction_message);
    var $input = $('<input>',{type:'text', 'class':'form-control', id:'transactionName', placeholder:transaction_name_message});
    $div.append($title).append($input);
    sHTMLAlert('',$div , sweetAlertAttr);

    function confirmCallback(){
        var transactionName = $swal.find('input').val();
        $("#tempOption").text(transactionName);
        $("#tempOption").show();
        $("#tempOption").prop('selected', true);
        $("#transaction").trigger('change');
        $('.reservations').hide();
    }
}

function showReservation(){
    var $reservation = $('.reservationTemplate').clone(true);
    sweetAlertAttr.width = '100%';
    sweetAlertAttr.confirmButtonText = 'OK';
    sHTMLAlertWithNoCancel('', $reservation, sweetAlertAttr);
}

function showReservations(){
    sweetAlertAttr.width = '100%';
    var $reservationsTemplate = $('.reservationsTemplate').clone('true');
    sHTMLAlert('', $reservationsTemplate, sweetAlertAttr);
}

function showTransaction($transactionSelect){
    if($transactionSelect.val() != 'none'){
        $('.reservations').show();
        $("#closeTransaction").prop('disabled', false)
        $("#importReservation").prop('disabled', false)
    }else{
        $('.reservations').hide();
        $("#closeTransaction").prop('disabled', true)
        $("#importReservation").prop('disabled', true)
    }
}