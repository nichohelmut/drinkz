import GMaps from 'gmaps/gmaps';

const mapElement = document.getElementById('map');
const markers = JSON.parse(mapElement.dataset.markers);

var icon = {
    url: "https://image.flaticon.com/icons/svg/802/802905.svg", // url
    // url: "https://image.flaticon.com/icons/svg/10/10522.svg",
    scaledSize: new google.maps.Size(40, 40), // scaled size
    origin: new google.maps.Point(0,0), // origin
    anchor: new google.maps.Point(0, 0) // anchor
  };

if (mapElement) { // don't try to build a map if there's no div#map to inject in
  const map = new GMaps({ el: '#map', lat: 0, lng: 0 });
  console.log(markers);
  markers.forEach(function(marker) {
    map.addMarker({
      lng: marker.lng,
      lat: marker.lat,
      icon: icon
    })
  })

  if (markers.length === 0) {
    map.setZoom(2);
  } else if (markers.length === 1) {
    map.setCenter(markers[0].lat, markers[0].lng);
    //console.log(map.setZoom(14));
    map.setZoom(14);
  } else {
    map.fitLatLngBounds(markers);
  }
}

