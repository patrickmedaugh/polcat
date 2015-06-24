$(document).ready(function() {
    $('#map').usmap({
      click: function(event, data) {
        $.ajax({
          type: "GET",
          url: "/states/" + data.name + ".json",
          success: function(reps){
            $('#representatives').empty();
            $.each(reps, function(index, rep){
              console.log(JSON.stringify(rep));
              $('#representatives').append("<a href= '/representative/" + rep.votesmart_id + "' ><p>" + rep.lastname + "</p></a>");
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
// $(document).ready(function() {
//   $('.mapback').click(function(){
//     console.log('mapback pressed');
//     // $('representatives').empty();
//     $('#map').removeClass('hidden');
//   });
//   $('#map').usmap({
//     click: function(event, data) {
//       $.ajax({
//         type: "GET",
//         status: 200,
//         url: "/states/" + data.name + ".json",
//         success: function(reps){
//           $('#representatives').empty();
//           $('#representatives').addClass("collection");
//           $('#representatives').append("<a class='dropdown-button btn' data-activates='#dropdown1'>" + data.name + " State Representatives</a>");
//           $('#representatives').append("<ul id='dropdown1' class=''></ul>");
//           console.log(data);
//           $.each(reps.results, function(index, rep){
//             console.log(rep);
//             // $('#representatives').append("<a class='collection-item' href= '/representative/" + rep.votesmart_id + "' ><p>" + rep.first_name + " " + rep.last_name + "</p></a>");
//             $('#dropdown1').append("<li><a class='collection-item' href= '/representative/" + rep.bioguide_id + "' >" + rep.first_name + " " + rep.last_name + "</a></li>");
//           })//each
//         }//success
//       })//ajax
//     }//click
//   });//map
// });//document
