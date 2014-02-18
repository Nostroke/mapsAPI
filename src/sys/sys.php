<?php

include("database.php");

include("app/model.php");
include("app/view.php");
include("app/controller.php");



// Helper functions.

function base_url($str)
{
	$url  = isset( $_SERVER['HTTPS'] ) && 'on' === $_SERVER['HTTPS'] ? 'https' : 'http';
	$url .= '://' . $_SERVER['SERVER_NAME'];
	$url .= in_array( $_SERVER['SERVER_PORT'], array('80', '443') ) ? '' : ':' . $_SERVER['SERVER_PORT'];
	
	return $url.'/'.$str;
}

?>