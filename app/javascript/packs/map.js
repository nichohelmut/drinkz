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
const mapElement = document.getElementById('map');
//
// const user_markers = JSON.parse(mapElement.dataset.user_markers);

if (mapElement) { // don't try to build a map if there's no div#map to inject in
  //create new map
  const map = new GMaps({ el: '#map', lat: 0, lng: 0 });
  //get data vom controller(DB) parse it with json so we can access atributes of dataset.markers which is data-markers="<%= @markers.to_json %>"
  //found @ index
  const markers = JSON.parse(mapElement.dataset.markers);
  console.log(markers);
  //add markers according to parsed data
  map.addMarkers(markers);

  if (markers.length === 0) {
    map.setZoom(2);
  } else if (markers.length === 1) {
    map.setCenter(markers[0].lat, markers[0].lng);
    //console.log(map.setZoom(14));
    map.setZoom(14);
  } else {
    map.fitLatLngBounds(markers);
  }

  console.log(map.markers)


  //for each marker in map we add a eventlistener click event

  map.markers.forEach(function(marker) {
    console.log(marker)
    // map.addMarker({
    //   lng: marker.lng,
    //   lat: marker.lat,
    //   icon: icon
    // })
    marker.addListener('click', function() {
      //standard command to open the url according to the markers url for example: url: "/locals/events/1"
    window.location.href = marker.url
  })
  });

}






//  console.log(user_markers);
//   user_markers.forEach(function(marker) {
//     map.addMarker({
//       lng: marker.lng,
//       lat: marker.lat,
//       icon: user_icon
//     })
//   });


//   if (user_markers.length === 0) {
//     map.setZoom(2);
//   } else if (user_markers.length === 1) {
//     map.setCenter(user_markers[0].lat, user_markers[0].lng);
//     //console.log(map.setZoom(14));
//     map.setZoom(14 );
//   } else {
//     map.fitLatLngBounds(user_markers);
//   }
// }


autocomplete();


