// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require turbolinks
//= require underscore
//= require gmaps/google
//= require_tree .

$(function(){ 
  $(document).foundation(); 
  constructMap(hash);
});

function constructMap(hash){
      var customMapStyle = [{"featureType":"administrative","elementType":"all","stylers":[{"visibility":"on"},{"lightness":33}]},{"featureType":"landscape","elementType":"all","stylers":[{"color":"#f2e5d4"}]},{"featureType":"poi.park","elementType":"geometry","stylers":[{"color":"#c5dac6"}]},{"featureType":"poi.park","elementType":"labels","stylers":[{"visibility":"on"},{"lightness":20}]},{"featureType":"road","elementType":"all","stylers":[{"lightness":20}]},{"featureType":"road.highway","elementType":"geometry","stylers":[{"color":"#c5c6c6"}]},{"featureType":"road.arterial","elementType":"geometry","stylers":[{"color":"#e4d7c6"}]},{"featureType":"road.local","elementType":"geometry","stylers":[{"color":"#fbfaf7"}]},{"featureType":"water","elementType":"all","stylers":[{"visibility":"on"},{"color":"#acbcc9"}]}]
      var base_url = "http://gmaps-utility-library.googlecode.com/svn/trunk/markerclusterer/1.0/images/";
      handler = Gmaps.build('Google',
        {markers:
          {clusterer: {
            gridSize: 35,
            maxZoom: 10,
            styles: [ {
              textSize: 12,
              url: base_url + 'm2.png',
              height: 55,
              width: 55 }
            ]}}}
      );
  handler.buildMap({ provider: {
    styles: customMapStyle
  }, internal: {id: 'map'}}, function(){
    markers = handler.addMarkers(hash);
    handler.bounds.extendWith(markers);
    handler.fitMapToBounds();
  });
};

