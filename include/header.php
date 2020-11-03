<?php require 'admin/include/database.php'; ?>
<?php if ($row->sitedurum==0) {
	die("Site Şuan Kapalı");
	# code...
} ?>

<!DOCTYPE HTML>
<!--
	Prologue by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title><?= $row->sitebaslik ?></title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<meta name="description" content="<?= $row->sitedescription ?>">
		<meta name="keywords" content="<?= $row->sitekeywords ?>">
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
	</head>
	<body>
<?php
	$site = $db->prepare("SELECT * FROM ayarlar WHERE id=:id");
	$site->execute(["id" => 0]);

	$row = $site->fetch(PDO::FETCH_OBJ);
?>
		<!-- Header -->
			<div id="header">

				<div class="top">

					<!-- Logo -->
						<div id="logo">
							 <ul class="nav-justified">
							<span class="image avatar48 img-circle"><img src="assets/upload/<?= $row->siteresim?>" class="img-circle" alt="User Image"></span></ul>
							<h1 id="title"><?= $row->siteadsoyad ?></h1>
							<p><?= $row->sitemeslek ?></p>
						</div>

					<!-- Nav -->
						<nav id="nav">
							<!--

								Prologue's nav expects links in one of two formats:

								1. Hash link (scrolls to a different section within the page)

								   <li><a href="#foobar" id="foobar-link" class="icon fa-whatever-icon-you-want skel-layers-ignoreHref"><span class="label">Foobar</span></a></li>

								2. Standard link (sends the user to another page/site)

								   <li><a href="http://foobar.tld" id="foobar-link" class="icon fa-whatever-icon-you-want"><span class="label">Foobar</span></a></li>

							-->
							<ul>
								<li><a href="index.php" id="top-link" class="skel-layers-ignoreHref"><span class="icon fa-home">Anasayfa</span></a></li>
								<li><a href="index.php#portfolio" id="portfolio-link" class="skel-layers-ignoreHref"><span class="icon fa-th">Çalışmalarım</span></a></li>
								<li><a href="index.php#about" id="about-link" class="skel-layers-ignoreHref"><span class="icon fa-user">Hakkımda</span></a></li>
								<li><a href="index.php#contact" id="contact-link" class="skel-layers-ignoreHref"><span class="icon fa-envelope">İletişim</span></a></li>
							</ul>
						</nav>

				</div>

				<div class="bottom">

					<!-- Social Icons -->
						<ul class="icons">
							<li><a href="<?= $row->siteinstagram ?>" class="icon fa-instagram"><span class="label">İnstagram</span>

							</a></li>
							
							<li><a href="<?= $row->sitegithub ?>" class="icon fa-github"><span class="label">Github</span></a></li>
							
							<li><a href="mailto:<?= $row->sitemail ?>" class="icon fa-envelope"><span class="label">E-MAİL</span></a></li>
						</ul>

				</div>

			</div>

		<!-- Main -->
			<div id="main">
