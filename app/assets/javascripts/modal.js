$(document).ready(function() {
  $('.login-button').click(function(e) {
    $.get('/current_user_signed_in', function(data) {
      if(data === null) {
        $('.login-modal').removeClass('hidden');
        $('.login-modal').css("height", "200px" );
      }
    });
  });
});
