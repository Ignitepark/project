<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description"
	content="GYm,fitness,business,company,agency,multipurpose,modern,bootstrap4">

<meta name="author" content="Themefisher.com">
<title><tiles:getAsString name="title" /></title>

<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- bootstrap.min css -->
<link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
<!-- Icofont Css -->
<link rel="stylesheet" href="plugins/icofont/icofont.min.css">
<!-- Themify Css -->
<link rel="stylesheet" href="plugins/themify/css/themify-icons.css">
<!-- animate.css -->
<link rel="stylesheet" href="plugins/animate-css/animate.css">
<!-- Magnify Popup -->
<link rel="stylesheet"
	href="plugins/magnific-popup/dist/magnific-popup.css">
<!-- Owl Carousel CSS -->
<link rel="stylesheet" href="plugins/slick-carousel/slick/slick.css">
<link rel="stylesheet"
	href="plugins/slick-carousel/slick/slick-theme.css">
<!-- Main Stylesheet -->
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<tiles:insertAttribute name="menu" />
	<tiles:insertAttribute name="body" />
	<tiles:insertAttribute name="footer" />

	<!-- Main jQuery -->
	<script src="plugins/jquery/jquery.js"></script>
	<!-- Bootstrap 4.3.1 -->
	<script src="plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- Slick Slider -->
	<script src="plugins/slick-carousel/slick/slick.min.js"></script>
	<!--  Magnific Popup-->
	<script src="plugins/magnific-popup/dist/jquery.magnific-popup.min.js"></script>
	<!-- Form Validator -->
	<script
		src="http://cdnjs.cloudflare.com/ajax/libs/jquery.form/3.32/jquery.form.js"></script>
	<script
		src="http://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.11.1/jquery.validate.min.js"></script>
	<!-- Google Map -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu5nZKbeK-WHQ70oqOWo-_4VmwOwKP9YQ"></script>
	<script src="plugins/google-map/gmap.js"></script>

	<script src="js/script.js"></script>
</body>
</html>