$(document).ready(function() {
    $('#map').usmap({
      click: function(event, data) {
        $.get('')
        $('#clicked-state')
          .text('You clicked: '+ data.name);
        }
    });
});
