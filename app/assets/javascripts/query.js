
var place = $.("h1").html();
var locations = [place];

$.each(locations, function(i, val) {
  $("#placeName").attr("value", val);
});


  

