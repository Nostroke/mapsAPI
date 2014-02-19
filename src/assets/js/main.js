var map;

$(document).ready(app_init);

function app_init()
{
	google.maps.event.addDomListener(window,'load',gmap_init);
	
	$.post(base_url(),{p:'areas'},set_areas);
	
	$('#area').change(prep_branches);
	
	$('#branch').change(set_map);
}

function set_areas(data)
{
	$('#area').html('');
	
	$.each(JSON.parse(data),append_area);
	
	$('#area').trigger('change');
}

function append_area(index,value)
{
	$('#area').append('<option value="' + value.id + '">' + value.name + '</option>');
}

function prep_branches()
{
	$.post(base_url(),{p:'branches',id:$('#area').val()},set_branches);
}

function set_branches(data)
{
	$('#branch').html('');
	
	$.each(JSON.parse(data),append_branch);
	
	$('#branch').trigger('change');
}

function append_branch(index,value)
{
	$('#branch').append('<option value="' + value.latitude + ',' + value.longitude + '">' + value.name + '</option>');
}

function gmap_init()
{
	var mapOptions = {center:new google.maps.LatLng(-34.397,150.644),zoom:8};
	map = new google.maps.Map(document.getElementById("map-canvas"),mapOptions);
}

function set_map()
{
	var latlng = $('#branch').val().split(',');
	
	map.setCenter(new google.maps.LatLng(Number(latlng[0]),Number(latlng[1])));
	map.setZoom(10);
	
	var marker = new google.maps.Marker({position:map.getCenter(),map:map,title:'Click to zoom'});
	
	var infowindow = new google.maps.InfoWindow({content:$('#branch option:selected').text()});
	
	infowindow.open(map,marker);
}

// Helper functions.

function base_url(url)
{
	url = url || '';
	var protocol = location.protocol;
	var slashes = protocol.concat("//");
	var host = slashes.concat(window.location.hostname);
	
	if(url.charAt(0) == '/')
	{
		return host + url;
	}
	else
	{
		return host + '/' + url;
	}
}