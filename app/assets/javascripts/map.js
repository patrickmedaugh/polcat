$(document).ready(function() {
    $('#map').usmap({
      click: function(event, data) {
        $.ajax({
          type: "GET",
          url: "http://localhost:3000/states/" + data.name + ".json"
        }).done(function(){
          console.log("yeeea buddy");
        });
        // $.get('/states/' + data.name).then(function(reps){
          // reps.empty();
          // something to this effect \/ \/l
        //  reps.append("<div>" + reps "</div>")
        // });
        $('#clicked-state').text('You clicked: '+ data.name);
    }
  });

});
