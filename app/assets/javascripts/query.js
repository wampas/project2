var link         = document.querySelector(".destination");
var title        = document.querySelector("#resultTitle");
var results      = document.querySelector(".results");
var place        = document.querySelector(".data");
var placeName    = link.innerhtml;
var placeAddress = place.innerhtml;

link.onclick = function() {
  // Display h3 header with destination name
  title.innerhtml = destination;
  // Load destination data in the .results div
  placeAddress = results.innerhtml;
}
