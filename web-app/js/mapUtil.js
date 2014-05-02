var geocoder;
var map;
var bounds;
var initialized = false;

function initialize() { // DONE
	geocoder = new google.maps.Geocoder();

	var mapOptions = {
		zoom : 12,
		mapTypeId : google.maps.MapTypeId.ROADMAP
	}

	map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
	bounds = new google.maps.LatLngBounds();
	
	initialized = true;
}


function plotLocationByLatLon(lat, lon, address, iconImg, centered) {
	if (!initialized) {
		initialize();
	}

	//alert(lat + " " + lon + " " + iconImg);

	var position = new google.maps.LatLng(lat, lon);
	var marker = new google.maps.Marker({
		position : position,
		map : map,
	});
	
	
	if(address) {
		marker.setTitle(address);
		
		//add click listener - https://developers.google.com/maps/documentation/javascript/events
		google.maps.event.addListener(marker, 'click', function() {
			//http://css-tricks.com/snippets/javascript/get-url-and-url-parts-in-javascript/
			var url = window.location.protocol + "//" + window.location.host + "/RealMashup/restClient/getProperties?watchlist=false&query=" + address;
			window.open(url, "_self");
		});
	}
	
	if(iconImg) {
		var icon = new google.maps.MarkerImage(iconImg);
		marker.setIcon(icon);
	}
	
	if(centered) {
		map.setCenter(position);
	} else {
	
		//https://developers.google.com/maps/documentation/javascript/reference?csw=1#LatLngBounds
		bounds.extend(position);
		map.fitBounds(bounds);
	}
}

function plotLocationByAddress(query) {
	if (!initialized) {
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
		var address = properties[i].address;
		
		plotLocationByLatLon(lat, lon, address, marker, false); 
	}

}



