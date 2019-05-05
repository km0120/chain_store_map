function initMap() {
  var opts = {
    zoom: 15,
    center: new google.maps.LatLng(35.658581, 139.745433)
  };
  var map = new google.maps.Map(document.getElementById("map"), opts);
}