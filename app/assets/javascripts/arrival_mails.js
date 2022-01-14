$(document).on('turbolinks:load', function(){


    // Get doctor by service
    //ajaxFilterPost("#arrival_mail_register_id", "/arrival_mails/get_reference", "GET");
    displayArrivalMailLinkedMail();
    displayArrivalMailAnswerDates();


    $("#arrival_mail_linked_to_mail").on('change', function(){
        displayArrivalMailLinkedMail();
    })

    $("#arrival_mail_to_answer").on('change', function(){
        displayArrivalMailAnswerDates();
    })


});


function displayArrivalMailLinkedMail(){

    arrival_mail_linked_to_mail = $('#arrival_mail_linked_to_mail').val();

    if (arrival_mail_linked_to_mail != null && arrival_mail_linked_to_mail == "Oui"){
        $(".arrival_mail_linked_mail").css("display", "block");
        
    }
    else{
        $(".arrival_mail_linked_mail").css("display", "none");

    }
}

function displayArrivalMailAnswerDates(){

    arrival_mail_to_answer = $('#arrival_mail_to_answer').val();

    if (arrival_mail_to_answer != null && arrival_mail_to_answer == "Oui"){
        $(".arrival_mail_response_limit_time").css("display", "block");
        $(".arrival_mail_response_date").css("display", "block");

        
    }
    else{
        $(".arrival_mail_response_limit_time").css("display", "none");
        $(".arrival_mail_response_date").css("display", "none");

    }
}


$(document).on('turbolinks:load', function(){


   
        // Get doctor by service
        ajaxRefresh("#arrival_mail_nature_id", "/arrival_mails/get_natures", "GET");
        ajaxRefresh("#arrival_mail_support_id", "/arrival_mails/get_supports", "GET");
        ajaxRefresh("#arrival_mail_correspondent_id", "/arrival_mails/get_correspondents", "GET");
        ajaxRefresh("#arrival_mail_folder_id", "/arrival_mails/get_folders", "GET");

});




$(document).on('turbolinks:load', function() {  

  $('#nature_id').select2({
        
        escapeMarkup: function (markup) { return markup; },
       
        language: {
            noResults: function () {
                 return "<a data-remote='true' href='/natures/new'>+ Ajouter</a>";
            }
        }
    });

});

$(document).on('turbolinks:load', function() {  

  $('#support_id').select2({
        
        escapeMarkup: function (markup) { return markup; },
        language: {
            noResults: function () {
                return "<a data-remote='true' href='/supports/new'>+ Ajouter</a>";
            }
        }
    });

});

$(document).on('turbolinks:load', function() {  

  $('#correspondent_id').select2({
        
        escapeMarkup: function (markup) { return markup; },
        language: {
            noResults: function () {
                return "<a data-remote='true' href='/correspondents/new'>+ Ajouter</a>";
            }
        }
    });

});


$(document).on('turbolinks:load', function() {  

  $('#folder_id').select2({
        
        escapeMarkup: function (markup) { return markup; },
        language: {
            noResults: function () {
                return "<a data-remote='true' href='/folders/new'>+ Ajouter</a>";
            }
        }
    });

});




$(document).on('turbolinks:load', function() {
    $('#arrival-mail #nature-modal').on('hide.bs.modal', function() {
      
    ajaxGetLastRecord('select[name="arrival_mail[nature_id]"]', "/get/last_nature", "GET");

    });
});

$(document).on('turbolinks:load', function() {
    $('#arrival-mail #support-modal').on('hide.bs.modal', function() {
      
    ajaxGetLastRecord('select[name="arrival_mail[support_id]"]', "/get/last_support", "GET");

    });
});

$(document).on('turbolinks:load', function() {
    $('#arrival-mail #correspondent-modal').on('hide.bs.modal', function() {
      
    ajaxGetLastRecord('select[name="arrival_mail[correspondent_id]"]', "/get/last_correspondent", "GET");

    });
});

$(document).on('turbolinks:load', function() {
    $('#arrival-mail #folder-modal').on('hide.bs.modal', function() {
      
    ajaxGetLastRecord('select[name="arrival_mail[folder_id]"]', "/get/last_folder", "GET");

    });
});

  





