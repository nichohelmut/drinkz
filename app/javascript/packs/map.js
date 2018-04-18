import GMaps from 'gmaps/gmaps';
import { autocomplete } from 'components/autocomplete';

// var icon = {
//     url: "https://image.flaticon.com/icons/svg/802/802905.svg", // url
//     // url: "https://image.flaticon.com/icons/svg/10/10522.svg",
//     scaledSize: new google.maps.Size(40, 40), // scaled size
//     origin: new google.maps.Point(0,0), // origin
//     anchor: new google.maps.Point(0, 0), // anchor
//     // url_show: "http://localhost:3000/locals/events/1"
//   };

//    var user_icon = {
//     // url: "https://image.flaticon.com/icons/svg/603/603401.svg", // url
//     url: "https://image.flaticon.com/icons/svg/10/10522.svg",
//     scaledSize: new google.maps.Size(40, 40), // scaled size
//     origin: new google.maps.Point(0,0), // origin
//     anchor: new google.maps.Point(0, 0) // anchor
//   };

//is a map there?
var mapElement = document.getElementById('map');


if (mapElement) { // don't try to build a map if there's no div#map to inject in
  //create new map
  const map = new GMaps({ el: '#map', lat: 0, lng: 0 });
console.log(map);
  //get data vom controller(DB) parse it with json so we can access atributes of dataset.markers which is data-markers="<%= @markers.to_json %>"
  //found @ index

  const markers = JSON.parse(mapElement.dataset.markers);
  console.log(markers);
  //add markers according to parsed data

  map.addMarkers(markers);
      console.log(map);


  //for each marker in map we add a eventlistener click event

  map.markers.forEach(function(marker) {
    console.log(marker);
    // map.addMarker({
    //   lng: marker.lng,
    //   lat: marker.lat,
    //   icon: icon
    // })
    marker.addListener('click', function() {
      //standard command to open the url according to the markers url for example: url: "/locals/events/1"
    window.location.href = marker.url;
  })
  });

    if (markers.length === 0) {
    map.setZoom(2);
  } else if (markers.length === 1) {
    map.setCenter(markers[0].lat, markers[0].lng);
    //console.log(map.setZoom(14));
    map.setZoom(14);
  } else {
    map.fitLatLngBounds(markers);
  }

  console.log(map.markers);
// }
// if (mapElement) {

   //const map1 = new GMaps({ el: '#map', lat: 0, lng: 0 });

    // var mapElement = document.getElementById('map');
    const usermarkers = JSON.parse(mapElement.dataset.usermarkers);
    map.addMarkers(usermarkers);
    console.log(map);
    console.log(usermarkers);

    map.usermarkers.forEach(function(usermarker) {
    console.log(usermarker);
    // map.addusermarker({
    //   lng: usermarker.lng,
    //   lat: usermarker.lat,
    //   icon: icon
    // })
    usermarker.addListener('click', function() {
      //standard command to open the url according to the usermarkers url for example: url: "/locals/events/1"
    window.location.href = usermarker.url;
  });
  });

    if (usermarkers.length === 0) {
      map.setZoom(2);
    } else if (usermarkers.length === 1) {
      map.setCenter(usermarkers[0].lat, usermarkers[0].lng);
    //console.log(map.setZoom(14));
    map.setZoom(14 );
  } else {
    map.fitLatLngBounds(usermarkers);
  }
}
// }

// autocomplete();


