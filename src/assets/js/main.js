$(document).ready(app_init);

function app_init()
{
	$.post(base_url(),{p:'areas'},set_areas);
	
	$('#area').change(prep_branches);
}

function set_areas(data)
{
	$.each(JSON.parse(data),append_area);
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
}

function append_branch(index,value)
{
	$('#branch').append('<option>' + value.name + '</option>');
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