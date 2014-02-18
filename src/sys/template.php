<!DOCTYPE html>
<html lang="es">
	<head>
		<meta charset=utf-8>
		<title>mapsAPI</title>
		
		<link rel="stylesheet" href="<?= base_url('assets/css/main.css'); ?>" />
		
		<script src="<?= base_url('assets/js/jquery.js'); ?>"></script>
		<script src="<?= base_url('assets/js/main.js'); ?>"></script>
	</head>
	<body>
		<div id="content">
			<div id="box">
				<h1>Seleccione<h1>
				<select id="area"><option>Delegación/Municipio</option></select>
				<select id="branch"><option>Sucursal</option></select>
				<div id="gmaps"></div>
			</div>
		</div>
		<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
	</body>
</html>