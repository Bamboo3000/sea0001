<section class="stretch-section">
	<section class="hero hero--full" style="background-image:url('<?= $this->helper('images')->getImageSource($this->hero_image, 'hero-large'); ?>');">
		<div class="hero-text content-container full-width">
			<p class="hero-header notes body-font-sml"><?= $this->hero_first_line; ?></p>
			<p class="hero-title head-font-lrg"><?= $this->hero_second_line; ?></p>
			<h1 class="hero-copy body-font-mid"><?= $this->hero_third_line; ?></h1>
			<a href="<?= get_permalink($this->hero_link_id); ?>" class="main-cta pill chev-cta body-font-xsml"><?= $this->hero_link_label; ?> <i class="fa fa-chevron-right" aria-hidden="true"></i></a>
			<i class="fa fa-chevron-down hero-down-cta" aria-hidden="true"></i>
		</div>
	</section>
	<section class="visual-container home-masonry">
		<div class="home-masonry__inner masonry">
			<div class="masonry">
				<div class="masonry-tile home-masonry__tile">
					<div class="home-masonry__bars masonry-tile__inner" style="background-image:url('<?= $this->helper('images')->getImageSource($this->grid_image_1, 'home-grid-small'); ?>');">
						<a class="masonry-tile__link" href="<?= get_permalink($this->grid_link_id_1); ?>">
							<div class="masonry-tile__title home-masonry-tile__title--bars">
								<h2 class="head-font-med"><?= $this->grid_link_label_1; ?></h2>
							</div>
						</a>
					</div>
				</div>
				<div class="masonry-tile home-masonry__tile">
					<div class="home-masonry__drinks masonry-tile__inner" style="background-image:url('<?= $this->helper('images')->getImageSource($this->grid_image_2, 'home-grid-small'); ?>');">
						<a class="masonry-tile__link" href="<?= get_permalink($this->grid_link_id_2); ?>">
							<div class="masonry-tile__title home-masonry-tile__title--drinks">
								<h2 class="head-font-med"><?= $this->grid_link_label_2; ?></h2>
							</div>
						</a>
					</div>
				</div>
				<div class="masonry-tile home-masonry__tile">
					<div class="home-masonry__supplements masonry-tile__inner" style="background-image:url('<?= $this->helper('images')->getImageSource($this->grid_image_3, 'home-grid-small'); ?>');">
						<a class="masonry-tile__link" href="<?= get_permalink($this->grid_link_id_3); ?>">
							<div class="masonry-tile__title home-masonry-tile__title--supplements">
								<h2 class="head-font-med"><?= $this->grid_link_label_3; ?></h2>
							</div>
						</a>
					</div>
				</div>
				<div class="masonry-tile home-masonry__tile">
					<div class="home-masonry__ingredients masonry-tile__inner" style="background-image:url('<?= $this->helper('images')->getImageSource($this->grid_image_4, 'home-grid-small'); ?>');">
						<a class="masonry-tile__link" href="<?= get_permalink($this->grid_link_id_4); ?>">
							<div class="masonry-tile__title home-masonry-tile__title--ingredients">
								<h2 class="head-font-med"><?= $this->grid_link_label_4; ?></h2>
							</div>
						</a>
					</div>
				</div>
			</div>
			<div class="masonry">
				<div class="masonry-tile home-masonry__tile">
					<div class="home-masonry__nutritional masonry-tile__inner" style="background-image:url('<?= $this->helper('images')->getImageSource($this->grid_image_5, 'home-grid-big'); ?>');">
						<a href="<?= get_permalink($this->grid_link_id_5); ?>" class="masonry-tile__link">
							<div class="masonry-tile__title home-masonry-tile__title--nutritional">
								<h2 class="head-font-med"><?= $this->grid_link_label_5; ?></h2>
							</div>
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="home-audience content-container">
		<div class="section-header">
			<p class="section-header__title notes"><?= $this->audience_sub_title; ?></p>
			<h2 class="section-header__desc"><?= $this->audience_title; ?></h2>
		</div>
		<div class="owl-carousel home-text-points" id="home-text-points">
		<?php for ($i = 1; $i <= 3; $i++) : ?>
			<?php 
				$image = 'audience_image_'.$i;
				$title = 'audience_title_'.$i;
				$summary = 'audience_summary_'.$i;
				$link_id = 'audience_link_id_'.$i;
				$link_label = 'audience_link_label_'.$i;
			 ?>
			<div class="text-point home-text-point">
				<object data="<?= $this->helper('images')->getImageSource($this->$image, ''); ?>" type="image/svg+xml"></object>
				<h3 class="text-point__title home-text-point__title"><?= $this->$title; ?></h3>
				<p class="text-point__text home-text-point__text"><?= $this->$summary; ?></p>
				<a href="<?= get_permalink($this->$link_id); ?>" class="text-point__cta notes home-text-point__cta"><?= $this->$link_label; ?></a>
			</div>
		<?php endfor; ?>
		</div>
	</section>
	<?php $this->component('blog', ['type' => 'home']); ?>
</section>