
var geocoder;
var map;
var initialized =false;

//https://developers.google.com/maps/tutorials/customizing/custom-markers
//http://kml4earth.appspot.com/icons.html

//var iconBase = "http://maps.google.com/mapfiles/kml/pushpin/";
//var blue_marker = iconBase + "blue-pushpin.png";

function initialize() {  //DONE
	geocoder = new google.maps.Geocoder();
	
	var mapOptions = {
		zoom : 12,
		mapTypeId : google.maps.MapTypeId.ROADMAP
	}

	map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
	initialized = true;
}

function plotLocationByLatLon(lat,lon,iconImg){ 
	if(!initialized) {
		initialize();
	}
	
	//alert(lat + " " + lon + " " + iconImg);
	if(!iconImg) {
		var marker = new google.maps.Marker({
			  position: new google.maps.LatLng(lat, lon),    
			  map: map    
		   });
	} else {
		var icon = new google.maps.MarkerImage(iconImg);
		var marker = new google.maps.Marker({
			position: new google.maps.LatLng(lat, lon), 
			map : map,
			icon : icon
		});
	}
}

function plotLocationByAddress(query) {
	if(!initialized) {
		initialize();
	}
	
	// function written to plot the city/address i.e Red marker
	geocoder.geocode({
		'address' : query
	}, function(results, status) {
		if (status == google.maps.GeocoderStatus.OK) {
			map.setCenter(results[0].geometry.location);
			var marker = new google.maps.Marker({
				map : map,
				position : results[0].geometry.location
			});

		} else {
			alert('Geocode was not successful for the following reason: '
					+ status);
		}
	});
}

function plotProperties(properties, marker) {
	for (var i = 0; i < properties.length; i++) {	
		var lat = properties[i].latitude;
		var lon = properties[i].longitude;
		
		plotLocationByLatLon(lat,lon, marker); //iconBase + "blue-pushpin.png"
	}
	
}

function plotHospital(lat,lon, marker) {
	plotLocationByLatLon(lat,lon, marker);
}
