$(document).ready(function() {
  $('.mapback').click(function(){
    console.log('mapback pressed');
    // $('representatives').empty();
    $('#map').removeClass('hidden');
  });
  $('#map').usmap({
    click: function(event, data) {
      $.ajax({
        type: "GET",
        url: "/states/" + data.name + ".json",
        success: function(reps){
          $('#representatives').empty();
          $('#representatives').addClass("collection");
          $.each(reps.results, function(index, rep){
            $('#representatives').append("<a class='collection-item' href= '/representative/" + rep.votesmart_id + "' ><p>" + rep.first_name + " " + rep.last_name + "</p></a>");
            $('#map').addClass('hidden');
          })//each
          $('#representatives').append("<a class='mapback collection-item'>Back to Map</a>");
        }//success
      })//ajax
    }//click
  });//map
});//document
