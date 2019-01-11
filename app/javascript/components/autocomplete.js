function onPlaceChanged() {
  var place = this.getPlace();

  var eventAddress = document.getElementById('event_location_address');

  // var userAddress = document.getElementById('user_address');
}

document.addEventListener("DOMContentLoaded", function() {
  var eventAddress = document.getElementById('event_location_address');

  if (eventAddress) {
    let autocomplete = new google.maps.places.Autocomplete(eventAddress, { types: ['geocode'] });
    google.maps.event.addListener(autocomplete, 'place_changed', onPlaceChanged);
    google.maps.event.addDomListener(eventAddress, 'keydown', function(e) {
      if (e.key === "Enter") {
        e.preventDefault(); // Do not submit the form on Enter.
      }
    });
  }
});

// document.addEventListener("DOMContentLoaded", function() {
//   var userAddress = document.getElementById('user_address');

//   if (userAddress) {
//     var autocomplete = new google.maps.places.Autocomplete(userAddress, { types: ['geocode'] });
//     google.maps.event.addListener(autocomplete, 'place_changed', onPlaceChanged);
//     google.maps.event.addDomListener(userAddress, 'keydown', function(e) {
//       if (e.key === "Enter") {
//         e.preventDefault(); // Do not submit the form on Enter.
//       }
//     });
//   }
// });

export {onPlaceChanged}
