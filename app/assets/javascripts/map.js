// $(document).ready(function() {
//   $('#map').usmap({
//     click: function(event, data) {
//       $.ajax({
//         type: "GET",
//         url: "/states/" + data.name + ".json",
//         success: function(reps){
//           $('#representatives').empty();
//           // $('#representatives').addClass("collection");
//           $.each(reps.results, function(index, rep){
//             $('#representatives').append("<a class='collection-item' href= '/representative/" + rep.votesmart_id + "' ><p>" + rep.first_name + " " + rep.last_name + "</p></a>");
//             // $('#map').css('display', 'none');
//             })//each
//             // $('#representatives').append("<a id='mapback' class='collection-item'><p>Back to Map</p></a>");
//         }//success
//       })//ajax
//     }//click
//
//   });//map
//   // $('#mapback').click(function(){
//   //   $('#map').css('display', 'inline');
//   // });
// });//document

$(document).ready(function() {
    $('#map').usmap({
      click: function(event, data) {
        $.ajax({
          type: "GET",
          url: "/states/" + data.name + ".json",
          success: function(reps){
            console.log(reps.results);
            $('#representatives').empty();
            // console.log(JSON.stringify(reps[0]));
            $.each(reps.results, function(index, rep){
              console.log(JSON.stringify(rep));
              $('#representatives').append("<a href= '/representative/" + rep.votesmart_id + "' ><p>" + rep.last_name + "</p></a>");
            //   $('#map').addClass('.hidden');
            });
          }
        })
        $('#clicked-state').text('You clicked: '+ data.name);
    }
  });

});
