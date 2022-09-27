<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	<nav class="navbar navbar-expand-lg navigation fixed-top" id="navbar">
		<div class="container-fluid">
			<a class="navbar-brand" href="main.do">
				<h2 class="text-white text-capitalize">
					</i>YD<span class="text-color">Gym</span>
				</h2>
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarsid" aria-controls="navbarsid"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="ti-view-list"></span>
			</button>
			<div class="collapse text-center navbar-collapse" id="navbarsid">
				<ul class="navbar-nav mx-auto">
					<li class="nav-item active"><a class="nav-link" href="main.do">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">Menu</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="about.html">Product</a></li>
							<li><a class="dropdown-item" href="trainer.html">PT</a></li>
							<li><a class="dropdown-item" href="course.html">제작문의</a></li>
						</ul></li>
					<li class="nav-item"><a class="nav-link" href="service.html">Information</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">Board</a>
						<ul class="dropdown-menu">
							<li>
								<form id="noticefrm" action="boardSelectList.do">
									<input type="hidden" name="searchMenu" value="MENU">
									<input type="hidden" name="search" value=""> <input
										type="hidden" name="pageNum" value="1"> <input
										type="hidden" name="pageAmount" value="20"><a
										class="dropdown-item" href="#" onclick="noticefrm.submit()">공지사항
									</a>
								</form>
							</li>
						</ul></li>

					<!-- ADMIN 관리 메뉴 -->
					<c:if test="${author == 'ADMIN' }">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false">Blog</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="blog.html">Blog Grid</a></li>
								<li><a class="dropdown-item" href="blog-sidebar.html">Blog
										Sidebar</a></li>
								<li><a class="dropdown-item" href="blog-single.html">Blog
										Details</a></li>
							</ul></li>
					</c:if>

					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">MyPage</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="about.html">개인정보</a></li>
							<li><a class="dropdown-item" href="trainer.html">포인트</a></li>
							<li><a class="dropdown-item" href="course.html">결제내역</a></li>
							<li><a class="dropdown-item" href="course.html">회원탈퇴</a></li>
						</ul></li>
				</ul>
				<div
					class="my-md-0 ml-lg-4 mt-4 mt-lg-0 ml-auto text-lg-right mb-3 mb-lg-0">
					<a href="login.do">
						<h3 class="text-color mb-0">
							<i class="ti-user"></i> &nbsp; login
						</h3>
					</a>
				</div>
			</div>
		</div>
	</nav>

</body>
</html>