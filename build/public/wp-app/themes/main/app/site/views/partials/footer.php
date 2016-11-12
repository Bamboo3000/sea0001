<footer>
	<section class="footer-categories__cont">
		<div class="footer-categories visual-container pre-footer-grid">
			<div class="pre-footer-grid__inner">
				<div class="pre-footer-grid__tile">
					<div class="footer-categories__tile footer-categories__tile--bars pre-footer-grid__tile-inner" style="background-image:url('<?= $this->helper('images')->getImageSource($this->option->footer_component_img1, 'home-grid-small') ?>');">
						<a class="masonry-tile__link" href="<?= get_permalink($this->option->footer_component_link1); ?>">
							<div class="masonry-tile__title home-masonry-tile__title--bars footer-categories__tile-title">
								<h2 class="pre-footer-masonry-tile__text masonry-tile__text"><?= $this->option->footer_component_label1; ?></h2>
							</div>
						</a>
					</div>
				</div>
				<div class="pre-footer-grid__tile">
					<div class="footer-categories__tile footer-categories__tile--drinks pre-footer-grid__tile-inner" style="background-image:url('<?= $this->helper('images')->getImageSource($this->option->footer_component_img2, 'home-grid-small') ?>');">
						<a class="masonry-tile__link" href="<?= get_permalink($this->option->footer_component_link2); ?>">
							<div class="masonry-tile__title home-masonry-tile__title--drinks footer-categories__tile-title">
								<h2 class="pre-footer-masonry-tile__text masonry-tile__text"><?= $this->option->footer_component_label2; ?></h2>
							</div>
						</a>
					</div>
				</div>
				<div class="pre-footer-grid__tile">
					<div class="footer-categories__tile footer-categories__tile--supplements pre-footer-grid__tile-inner" style="background-image:url('<?= $this->helper('images')->getImageSource($this->option->footer_component_img3, 'home-grid-small') ?>');">
						<a class="masonry-tile__link" href="<?= get_permalink($this->option->footer_component_link3); ?>">
							<div class="masonry-tile__title home-masonry-tile__title--supplements footer-categories__tile-title">
								<h2 class="pre-footer-masonry-tile__text masonry-tile__text"><?= $this->option->footer_component_label3; ?></h2>
							</div>
						</a>
					</div>
				</div>
				<div class="pre-footer-grid__tile">
					<div class="footer-categories__tile footer-categories__tile-ingredients pre-footer-grid__tile-inner" style="background-image:url('<?= $this->helper('images')->getImageSource($this->option->footer_component_img4, 'home-grid-small') ?>');">
						<a class="masonry-tile__link" href="<?= get_permalink($this->option->footer_component_link4); ?>">
							<div class="masonry-tile__title home-masonry-tile__title--ingredients footer-categories__tile-title">
								<h2 class="pre-footer-masonry-tile__text masonry-tile__text"><?= $this->option->footer_component_label4; ?></h2>
							</div>
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="contact-summary">
		<a href="/" style="display: inline-block;">
			<object class="contact-summary__img" type="image/svg+xml" data="assets/img/opalbond-logo-main.svg" >
				Opalbond logo
			</object>
		</a>
		<p class="contact-summary__details">
			<a href="tel:<?= $this->option->contact_phone; ?>">
			<span class="contact-summary__tel">Tel 
				<span class="contact-summary__tel-number bold">
					<?= $this->option->contact_phone; ?>
				</span>
			</span>
			</a>
			<a href="mailto:<?= $this->option->contact_email; ?>">
			<span class="contact-summary__email">Email 
				<span class="contact-summary__email-addr bold">
					<?= $this->option->contact_email; ?>
				</span>
			</span>
			</a>
		</p>
	</section>
	<section class="footer content-container">
		<div class="footer-menu footer-third">
			<p class="footer-menu__title column-list__title">Useful links</p>
			<?php $this->component('footermenu'); ?>
			<a href="http://www.honestideas.co.uk" target="_blank">
				<p class="honest-watermark" >Design and Development by Honest</p>
			</a>
		</div>
		<div class="footer-addr footer-third">	
			<a href="<?= $this->option->contact_map_url; ?>" target="_blank">
				<p class="footer-addr__address">
					<?= $this->option->contact_address; ?>
				</p>
			</a>
			<p class="footer-addr__company">
				&copy; Opalbond Nutrition 2016
			</p>
		</div>
		<div class="footer-info footer-third">
			<p class="footer-info__strapline">Opalbond represent high quality, European contract manufacturers of innovative private label finished products.</p>
			<div class="footer-info__boxing">
				<img src="assets/img/ives-boxing.png" alt="St ives boxing logo" class="footer-info__ives-boxing">
				<p class="footer-info__boxing-info">We're happy to help local sport by supporting The St Ives Boxing Academy</p>
			</div>
		</div>
	</section>
</footer>