window.mainMap = {};

mainMap.init = function() {
  var options = {
    zoom: 7, 
    center: new google.maps.LatLng(48.858093, 2.294694),
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };

  this.canvas = new google.maps.Map($('.main-map-canvas')[0], options)

  if (this.coords) this.addMarkers();
}

mainMap.addMarkers = function() {
  var image = 'http://maps.google.com/mapfiles/ms/icons/yellow-dot.png';
  this.coords.forEach(function(coord) {
    console.log(coord)
   myMarker = new google.maps.Marker({
    position: new google.maps.LatLng(coord.latitude, coord.longitude),
    map: mainMap.canvas,
    title: coord.name,
    icon: image
  });
 });
}

$(document).on('ready page:load', function() {
  if ($('.main-map-canvas').length) mainMap.init(); 
});