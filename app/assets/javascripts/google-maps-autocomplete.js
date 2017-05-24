$(document).ready(function() {
  var console_address = $('#console_address').get(0);

  if (console_address) {
    var autocomplete = new google.maps.places.Autocomplete(console_address, { types: ['geocode'] });
    google.maps.event.addDomListener(console_address, 'keydown', function(e) {
      if (e.keyCode == 13) {
        e.preventDefault(); // Do not submit the form on Enter.
      }
    });
  }
});
