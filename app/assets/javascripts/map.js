$(document).ready(function() {
    var $reps = $("#reps")
    $('#map').usmap({
      click: function(event, data) {
        $.get('/states/' + data.name).then(function(reps){
          $reps.empty();
          console.log("You got it");
          // something to this effect \/ \/l
        //  $reps.append("<div>" + reps "</div>")
        });
        $('#clicked-state')
          .text('You clicked: '+ data.name);
    }
  });
});
