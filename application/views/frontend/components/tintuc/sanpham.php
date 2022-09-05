<!DOCTYPE html>
<html lang="en">

<head>
	<meta name="viewport" content="width=device-width, initial-social=1">
	<!-- Author -->
	<meta name="author" content="Themes Industry">
	<!-- Description -->
	<meta name="description" content="MegaOne is a highly creative, modern, visually stunning and Bootstrap responsive multipurpose studio and portfolio HTML5 template with ready home page demos.">
	<!-- Page Title -->
	<title>Công ty Trung Quân</title>
	<!-- Bundle -->
	<link href="<?php echo base_url() ?>/public/vendor/css/bundle.min.css" rel="stylesheet">
	<!-- Plugin Css -->
	<link href="<?php echo base_url() ?>/public/vendor/css/LineIcons.min.css" rel="stylesheet">
	<link rel="stylesheet" href="<?php echo base_url() ?>/public/vendor/css/owl.carousel.min.css">
	<link href="<?php echo base_url() ?>/public/vendor/css/jquery.fancybox.min.css" rel="stylesheet">
	<link rel="stylesheet" href="<?php echo base_url() ?>/public/vendor/css/wow.css">
	<link rel="stylesheet" href="<?php echo base_url() ?>/public/vendor/css/cubeportfolio.min.css">
	<link rel="stylesheet" href="<?php echo base_url() ?>/public/vendor/css/LineIcons.min.css">
	<link rel="stylesheet" href="<?php echo base_url() ?>/public/assets/css/bootstrap.min.css">
	<!-- Style Sheet -->
	<link href="<?php echo base_url() ?>/public/builder-construction/css/style.css" rel="stylesheet">
	<link href="<?php echo base_url() ?>/public/builder-construction/css/custom.css" rel="stylesheet">
	<link href="<?php echo base_url() ?>/public/builder-construction/css/line-awesome.min.css" rel="stylesheet">
</head>

<body data-spy="scroll" data-target="#megaone" data-offset="90">

	<!-- Preloader -->
	<div class="preloader">
		<div class="center">
			<div class="loader">
				<div></div>
				<div></div>
				<div></div>
				<div></div>
				<div></div>
				<div></div>
				<div></div>
				<div></div>
				<div></div>
			</div>
		</div>
	</div>
	<!-- Preloader End -->

	<!-- Start Header -->
	<header id="home">
		<!--Navigation-->
		<nav class="navbar navbar-top-default navbar-expand-lg  nav-box-round navbar-simple nav-line" style="background:#ffcd04">
			<div class="container">
				<a href="<?php echo base_url() ?>trang-chu" title="Logo" class="logo">
					<!--Logo Default-->
					<img src="<?php echo base_url() ?>/public/builder-construction/images/logo.png" alt="logo" class="logo-dark">
				</a>

				<!--Nav Links-->
				<div class="collapse navbar-collapse" id="megaone">
					<div class="navbar-nav ml-auto">
					<a class="nav-link active" href="<?php echo base_url() ?>trang-chu">Trang chủ<span></span></a>
						<a class="nav-link" href="<?php echo base_url() ?>sanpham">Dự án<span></span></a>
						<a class="nav-link" href="<?php echo base_url() ?>tin-tuc">Tin tức<span></span></a>
						<a class="nav-link scroll " href="#contact">Liên hệ<span></span></a>
					</div>
				</div>
				<!--Side Menu Button-->
				<a href="javascript:void(0)" class="sidemenu_btn" id="sidemenu_toggle">
					<span></span>
					<span></span>
					<span></span>
				</a>
			</div>
		</nav>
		<!--Side Nav-->
		<div class="side-menu hidden">
			<div class="inner-wrapper">
				<span class="btn-close" id="btn_sideNavClose"><i></i><i></i></span>
				<nav class="side-nav w-100">
					<ul class="navbar-nav">
						<li class="nav-item">
							<a class="nav-link" href="<?php echo base_url() ?>trang-chu">Trang chủ</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="<?php echo base_url() ?>sanpham">Dự án</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="<?php echo base_url() ?>tin-tuc">Tin tức</a>
						</li>
						<li class="nav-item">
							<a class="nav-link scroll" href="#contact">Liên hệ</a>
						</li>
					</ul>
				</nav>

				<div class="side-footer w-100">
					<ul class="social-icons-simple">
						<li><a class="facebook-text-hvr" href="javascript:void(0)"><i class="fab fa-facebook-f"></i></a></li>
						<li><a class="twitter-text-hvr" href="javascript:void(0)"><i class="fab fa-twitter"></i></a></li>
						<li><a class="linkedin-text-hvr" href="javascript:void(0)"><i class="fab fa-linkedin-in"></i></a></li>
						<li><a class="instagram-text-hvr" href="javascript:void(0)"><i class="fab fa-instagram"></i></a></li>
					</ul>
					<p class="">&copy; 2022 Công ty TNHH Trung Quân</p>
				</div>
			</div>
		</div>
		<a id="close_side_menu" href="javascript:void(0);"></a>
		<!-- End side menu -->
	</header>
	<!-- End Header -->

	<section class="main standalone mt-5" id="main">
		<!--content-->
		<div class="blog-content">
			<div class="container">
				<div class="row no-gutters">
					<div class="col-12">
						<!-- START HEADING SECTION -->
						<div>
							<div class="row no-gutters">
								<div class="col-12 col-md-12 offset-md-1 col-lg-8 offset-lg-2  text-center wow slideInUp" data-wow-duration="2s" style="padding:15px">
									<h1 class="heading text-orang" style="color:#f46110">Những dự án của công ty</h1>
								</div>
							</div>
						</div>
						<div class="row m-0">
							<div class="text-center pull-right">
								<ul class="pagination">
									<?php echo $strphantrang; ?>
								</ul>
							</div>
						</div>
						<div class="standalone-area">
							<?php foreach ($list as $sp) : ?>
								<?php if ($sp['id'] % 2 == 0) : ?>
									<div class="row standalone-row align-items-center no-gutters" style="margin-bottom:0;padding:0px 75px;height:450px">
										<div class="col-lg-6" style="height:80%">
											<a href="<?php echo base_url() ?>ttsanpham/<?php echo $sp['id']; ?>">
												<div class="blog-image wow hover-effect fadeInLeft image" style="height:100%">
													<img style="border-radius:20px" src="<?php echo base_url() ?>/public/assets/images/<?php echo $sp['img']; ?>">
												</div>
											</a>
										</div>
										<div class="col-lg-6 stand-img-des">
											<div class="d-inline-block">
												<h2 style="color:#f46110 !important" class="heading-text text-orang sub-heading "><strong><?php echo $sp['spname']; ?></strong></h2>
												<a href="<?php echo base_url() ?>ttsanpham/<?php echo $sp['id']; ?>"> <strong>Chi tiết </strong></a>
											</div>
										</div>
									</div>
								<?php else : ?>
									<div class="row standalone-row align-items-center no-gutters" style="margin-bottom:0;padding:0px 75px;height:450px">
										<div class="col-lg-6 order-lg-2" style="height:80%">
											<a href="<?php echo base_url() ?>ttsanpham/<?php echo $sp['id']; ?>">
												<div class="blog-image wow hover-effect fadeInRight text-center text-lg-right image" style="height:100%">
													<img style="border-radius:20px" src="<?php echo base_url() ?>/public/assets/images/<?php echo $sp['img']; ?>">
												</div>
											</a>
										</div>
										<div class="col-lg-6 stand-img-des">
											<div class="d-inline-block">
												<h2 style="color:#f46110 !important" class="heading-text text-orang"><strong><?php echo $sp['spname']; ?></strong></h2>
												<a href="<?php echo base_url() ?>ttsanpham/<?php echo $sp['id']; ?>"> <strong>Chi tiết </strong></a>
											</div>
										</div>
									</div>
								<?php endif; ?>
								<!-- First-Row -->


							<?php endforeach; ?>
						</div>
						<!-- END HEADING SECTION -->
					</div>
				</div>
			</div>
		</div>
	</section>


	<!--Footer Start-->
	<footer class="footer-sec text-center">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="footer-social">
						<ul class="list-unstyled">
							<li><a class="wow fadeInUp" href="javascript:void(0);"><i class="fab fa-facebook-f" aria-hidden="true"></i></a></li>
							<li><a class="wow fadeInUp" href="javascript:void(0);"><i class="fab fa-google-plus-g" aria-hidden="true"></i></a></li>
							<li><a class="wow fadeInUp" href="javascript:void(0);"><i class="fab fa-instagram" aria-hidden="true"></i></a></li>
							<li><a class="wow fadeInDown" href="javascript:void(0);"><i class="fab fa-youtube" aria-hidden="true"></i></a></li>
						</ul>
					</div>
				</div>
				<div class=" col-lg-4 contact-details text-center text-lg-left wow slideInRight" data-wow-delay=".4s">
					<span class="contact-sub-heading"><strong>Thông tin liên lạc</strong></span>
					<ul class="contact-list">
						<li><span>Mã số thuế: </span>5900451607</li>
						<li><span>Số điện thoại: </span>0269790182</li>
						<li><span>Người đại diện: </span> Vũ Ngọc Ân</li>
						<li><span>Giấy phép kinh doanh: </span> 5900451607</li>
						<li><span>Mon-Fri: </span> 9am to 6pm</li>
					</ul>
				</div>
				<div class=" col-lg-4  contact-details text-center text-lg-left wow slideInRight" data-wow-delay=".4s">
					<h4 class="contact-heading">Công ty THHH TRUNG QUÂN</h4>
					<p class="contact-address">Thôn Hợp Thắng, Xã Ia Drăng, Huyện Chư Prông, Tỉnh Gia Lai</p>
				</div>
			</div>
		</div>
	</footer>
	<!--Footer End-->

	<!--START SCROLL TOP-->
	<div class="go-top"><i class="fas fa-angle-up"></i><i class="fas fa-angle-up"></i></div>
	<!--END SCROLL TOP-->

	<!-- JavaScript -->
	<script src="<?php echo base_url() ?>/public/vendor/js/bundle.min.js"></script>
	<!-- Plugin Js -->
	<script src="<?php echo base_url() ?>/public/vendor/js/wow.min.js"></script>
	<script src="<?php echo base_url() ?>/public/vendor/js/owl.carousel.min.js"></script>
	<script src="<?php echo base_url() ?>/public/vendor/js/jquery.cubeportfolio.min.js"></script>
	<script src="<?php echo base_url() ?>/public/vendor/js/jquery.fancybox.min.js"></script>
	<!-- custom script -->
	<script src="<?php echo base_url() ?>/public/vendor/js/contact_us.js"></script>
	<script src="<?php echo base_url() ?>/public/builder-construction/js/script.js"></script>
</body>

</html>