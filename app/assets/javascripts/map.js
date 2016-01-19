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
        status: 200,
        url: "/states/" + data.name + ".json",
        success: function(reps){
          $('#representatives').empty();
          $('#representatives').addClass("collection");
          $('#representatives').append("<a class='dropdown-button btn' data-activates='#dropdown1'>" + data.name + " State Representatives</a>");
          $('#representatives').append("<ul id='dropdown1' class=''></ul>");
          $.each(reps.results, function(index, rep){
            $('#dropdown1').append("<li><a class='collection-item' href= '/representative/" + rep.bioguide_id + "' >" + rep.first_name + " " + rep.last_name + "</a></li>");
          })//each
        }//success
      })//ajax
    }//click
  });//map
});//document
