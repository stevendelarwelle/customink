$(document).on('turbolinks:load', function(){
    $('.oldlink').click(function(){
        alert('Does this work?');
        $('.oldlink').hide();
        $('.newlink').show();
    });

});