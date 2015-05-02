window.myMap = {};

myMap.init = function() {
  var options = {
    zoom: 14, 
    center: new google.maps.LatLng(this.latitude, this.longitude),
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };

  this.canvas = new google.maps.Map($('.map-canvas')[0], options)

  if (this.showMarker) {
    var myMarker = new google.maps.Marker({
      position: new google.maps.LatLng(this.latitude, this.longitude),
      map: this.canvas
    });
  }

}

$(document).on('ready page:load', function() {
  if ($('.map-canvas').length) myMap.init(); 
});