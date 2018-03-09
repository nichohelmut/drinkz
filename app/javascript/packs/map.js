import GMaps from 'gmaps/gmaps.js';
import SnazzyInfoWindow from 'snazzy-info-window';

const mapElement = document.getElementById('map');
const markers = JSON.parse(mapElement.dataset.markers);
if (mapElement) { // don't try to build a map if there's no div#map to inject in
  const map = new GMaps({ el: '#map', lat: 0, lng: 0 });
  map.addMarkers(markers);
  if (markers.length === 0) {
    map.setZoom(2);
  } else if (markers.length === 1) {
    map.setCenter(markers[0].lat, markers[0].lng);
    map.setZoom(14);
  } else {
    map.fitLatLngBounds(markers);
  }
}

markers.forEach(function(marker) {

  var contentString = 'some content  to displaz'

  var infoWindow = new SnazzyInfoWindow({
    marker: marker,
    content: contentString
  });

  infoWindow.open()
  // marker.addEventListener('click', function() {
  //  window.location.href = marker.url
  // })
})
