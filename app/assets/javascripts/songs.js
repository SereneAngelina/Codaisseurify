// function deleteSong(artistId, songId) {
//   $.ajax({
//     type: "DELETE",
//     url: "/api/artists/" + artistId + "/songs/" + songId+ ".json",
//     contentType: "application/json",
//     dataType: "json"
//   })
//   .done(function(data) {
//     alert('Song deleted successfully!')
//     location.reload();
//   });
// }

function removeSong(event) {
  event.preventDefault();

    var artistId = $(this).attr('artist-id');
  var songId = $(this).attr('song-id');

  $.ajax({
    type: "DELETE",
    url: "/api/artists/" + artistId + "/songs/" + songId+ ".json",
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data) {

    console.log(data);

     $('li[id="'+songId+'"]').remove();

  });
}

function addSong(artistId) {
  var name = $('#name').val();
  var url = $('#url').val();

  var add_Song = { artist_id: artistId, name: name, url: url };

  $.ajax({
    type: "POST",
    url: "/api/artists/" + artistId + '/songs.json',
    contentType: "application/json",
    dataType: "json",
    data: JSON.stringify({
          song: add_Song
      })
  })
  .done(function(data) {
    console.log(data)
    alert('Song added successfully');
    $('#name').val(null);
    $('#url').val(null);
    location.reload();
  })
  .error(function(data) {
    alert('Error while adding Songs!')
  });
}



function deleteAll(artistId) {
$.ajax({
    type: "DELETE",
    url:"/api/artists/"+ artistId +"/songs/destroy_all",
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data) {
    alert('All songs deleted successfully!')
    location.reload();
  });
}


$(document).ready(function() {
$(".delete-song").bind('click', removeSong);

});
