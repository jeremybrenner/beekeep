//Place all the behaviors and hooks related to the matching controller here.
//All this logic will automatically be available in application.js.
//You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function(){
  constructMap(hash)
});


var constructMap = function(hash){
      var customMapStyle = [{"featureType":"administrative","elementType":"all","stylers":[{"visibility":"on"},{"lightness":33}]},{"featureType":"landscape","elementType":"all","stylers":[{"color":"#f2e5d4"}]},{"featureType":"poi.park","elementType":"geometry","stylers":[{"color":"#c5dac6"}]},{"featureType":"poi.park","elementType":"labels","stylers":[{"visibility":"on"},{"lightness":20}]},{"featureType":"road","elementType":"all","stylers":[{"lightness":20}]},{"featureType":"road.highway","elementType":"geometry","stylers":[{"color":"#c5c6c6"}]},{"featureType":"road.arterial","elementType":"geometry","stylers":[{"color":"#e4d7c6"}]},{"featureType":"road.local","elementType":"geometry","stylers":[{"color":"#fbfaf7"}]},{"featureType":"water","elementType":"all","stylers":[{"visibility":"on"},{"color":"#acbcc9"}]}]
      var base_url = "https://gmaps-utility-library.googlecode.com/svn/trunk/markerclusterer/1.0/images/";
      handler = Gmaps.build('Google',
        {markers:
          {clusterer: {
            gridSize: 35,
            maxZoom: 0,
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


