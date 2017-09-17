// application.js

//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require_tree .
function deleteSong(artistId, songId) {
  $.ajax({
    type: "DELETE",
    url: "/api/artists/" + artistId + "/songs/" + songId+ ".json",
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data) {
    alert('Song deleted successfully!')
    location.reload();
  });
}
