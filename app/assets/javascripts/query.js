window.onload = function () {
  $.ajax({
    url: 'https://maps.googleapis.com/maps/api/place/textsearch/json?',
    api: API_KEY
  });

  // Get search results; must use onclick to call on search button
  function getResults() {
    var place = $("input[name='search']").val();
    $.get("https://maps.googleapis.com/maps/api/place/textsearch/json?" + place + API_KEY).done(function(places){
      places = JSON.parse(places);
      appendPlace(places);
    });
  }  

  // Append results to div
  function appendPlace(places) {
    display = places;
    $("input[name='search']").remove();
    val div = $("<div>").attr("id", "listResults");
    for (var key in places) {
      var p = $("<p>").text(key + ": " + places[key]);
      div.append(p);
    }
    $(".results").append(div);
  }

}