$(document).ready(function() {
    $('#map').usmap({
      click: function(event, data) {
        $.ajax({
          type: "GET",
          url: "http://localhost:3000/states/" + data.name + ".json",
          success: function(reps){
            $('#representatives').empty();
            $.each(reps, function(index, rep){
              $('#representatives').append("<a href= '/' ><p>" + rep.lastname + "</p></a>");
              $('#map').addClass('.hidden');
            });
          }
        })
        // $.get('/states/' + data.name).then(function(reps){
          // reps.empty();
          // something to this effect \/ \/l
        //  reps.append("<div>" + reps "</div>")
        // });
        $('#clicked-state').text('You clicked: '+ data.name);
    }
  });

});
