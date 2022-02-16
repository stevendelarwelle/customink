$(document).on('turbolinks:load', function(){
    $('.oldlink').click(function(){
        $('.oldlink').hide();
        $('.newlink').show();
    });

});