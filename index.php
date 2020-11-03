<?php include 'include/header.php'; ?>

<?php 
$anasayfa = $db->prepare("SELECT * FROM anasayfa WHERE id=:idd");
$anasayfa->execute(["idd"=>1]);
$anasayfarow = $anasayfa -> fetch(PDO::FETCH_OBJ);
?>

				<!-- Intro -->
					<section id="top" class="one dark cover">
						<div class="container">

							<header>
								<h2 class="alt"><?= $anasayfarow->yazi1 ?></a>.</h2>
								<p><?= $anasayfarow->yazi2 ?></p>
							</header>

							<footer>
								<a href="#about" class="button scrolly">Hakkımda</a>
							</footer>

						</div>
					</section>
					

				<!-- Portfolio -->
					<section id="portfolio" class="two">
						<div class="container">

							<header>
								<h2>Portföy</h2>
							</header>

							<p><?= $anasayfarow->yazi3 ?></p>
							<?php 
							$portfoy = $db->query("SELECT * FROM calismalar")->fetchall(PDO::FETCH_OBJ);
							?>
							
							<div class="row">
								<?php 
							foreach ($portfoy as $row) {
								
							
							?>
								<div class="4u 12u$(mobile)">
									<article class="item">
										<a href="detay.php?id=<?= $row->id ?>" class="image fit"><img src="assets/upload/<?= $row->resim ?>" alt="" height="200" /></a>
										<header>
											<h3><?= $row->baslik ?></h3>
										</header>
									</article>
									
								</div>
								
								<?php } ?>
								
							</div>
							
						</div>
					</section>
<?php
$hakkimda = $db->prepare("SELECT * FROM hakkimizda WHERE id=:idd");
$hakkimda->execute(["idd"=>1]);

$row = $hakkimda->fetch(PDO::FETCH_OBJ);
 ?>
				<!-- About Me -->
					<section id="about" class="three">
						<div class="container">
							
							<header>
								<h2>Hakkımda</h2>
							</header>

							<a href="#" class="image featured"><img src="assets/upload/<?= $row->resim ?>" alt="" /></a>

							<p><?= $row->yazi ?></p>

						</div>
					</section>

				<!-- Contact -->
					<section id="contact" class="four">
						<div class="container">

							<header>
								<h2>Contact</h2>
							</header>

							<p>Elementum sem parturient nulla quam placerat viverra
							mauris non cum elit tempus ullamcorper dolor. Libero rutrum ut lacinia
							donec curae mus. Eleifend id porttitor ac ultricies lobortis sem nunc
							orci ridiculus faucibus a consectetur. Porttitor curae mauris urna mi dolor.</p>

							<form method="post" action="#">
								<div class="row">
									<div class="6u 12u$(mobile)"><input type="text" name="adsoyad" placeholder="Adınız Soyadınız" /></div>
									<div class="6u$ 12u$(mobile)"><input type="text" name="email" placeholder="Email" /></div>
									<div class="12u$">
										<textarea name="message" placeholder="Mesajınız"></textarea>
									</div>
									<div class="12u$">
										<input type="submit" value="Gönder" />
									</div>
								</div>
							</form>

						</div>
					</section>
					<?php 
					if ($_POST) {
						$kaydet = $db->prepare("INSERT INTO iletisim SET 
							isim =:isim,
							email=:email,
							mesaj=:mesaj"); 
					$kaydet ->execute([
						"isim"   => $_POST["adsoyad"],
						"email"  => $_POST["email"],
						"mesaj"  => $_POST["message"]
					]);
					 	if ($kaydet) {
						echo "Mesajınızı aldık en kısa sürede size dönüş yapılacaktır.";
						}else{
						echo "Mesaj Gönderilemedi.Lütfen Tekrar Deneyin.";
						}
					}
					?>

		<?php include 'include/footer.php'; ?>
