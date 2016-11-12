<?php 
/*
* Template Name: Products

 ()()		That's an indentation bunny.
 ('.')		He's here to protect this file for propper indentation.
 (()()		Please don't mess with a bunny...
*(_()()		He can be really CrAzY!#$%&@%$

*/
 ?>
<section>
	<section class="hero hero--natural" style="background-image:url('<?= $this->helper('images')->getImageSource($this->hero_image, 'hero-large'); ?>');">
		<!-- <div class="breadcrumb-container content-container">
			<p class="breadcrumbs"><a href="#">Home</a>  &middot; <a href="#">Our Ranges</a> &middot; <a href="#">Drinks</a></p>
		</div> -->
		<?php $this->component('breadcrumb'); ?>
		<div class="hero-text content-container full-width">
			<p class="hero-header notes"><?= $this->hero_first_line; ?></p>
			<h1 class="hero-title"><?= $this->hero_second_line; ?></h1>
			<p class="hero-copy"><?= $this->hero_third_line; ?></p>
			<a href="<?= get_permalink($this->hero_link_id); ?>" class="main-cta pill chev-cta"><?= $this->hero_link_label; ?> <i class="fa fa-chevron-right" aria-hidden="true"></i></a>
		</div>
	</section>
	<section class="products-add-value visual-container" style="background-image:url('<?= $this->helper('images')->getImageSource($this->products_values_title_image, 'hero-large'); ?>');">
		<div class="section--dark">
			<div class="section-header section-header--dark">
				<p class="section-header__title notes"><?= $this->products_values_title_title_first; ?></p>
				<h2 class="section-header__desc"><?= $this->products_values_title_title_second; ?></h2>
			</div>
			<?php $this->component('opa0007-products-values'); ?>
		</div>
	</section>
	<section class="products-existing-products visual-container">
		<div class="section-header content-container">
			<p class="section-header__title notes"><?= $this->products_cards_title_title_first; ?></p>
			<h2 class="section-header__desc"><?= $this->products_cards_title_title_second; ?></h2>
		</div>
		<?php $this->component('opa0007-products-cards'); ?>
	</section>
	<section class="products-industry-tabs visual-container">
		<div class="section-header content-container">
			<p class="section-header__title notes"><?= $this->products_tabs_title_title_first; ?></p>
			<h2 class="section-header__desc"><?= $this->products_tabs_title_title_second; ?></h2>
		</div>
		<?php $this->component('opa0007-products-tabs'); ?>
	</section>
	<section class="testimonial-section visual-container">
		<div class="testimonial__img-cont">
			<img src="" alt="" class="testimonial__img">
		</div>
		<p class="testimonial__quote">“<?= $this->products_testimonial_content; ?>”</p>
		<p class="testimonial__name"><?= $this->products_testimonial_author_name; ?></p>
		<p class="testimonial__title"><?= $this->products_testimonial_author_title; ?></p>
	</section>
	<section class="collaborate-cta content-container">
		<h3 class="collaborate-cta__title"><?= $this->simple_cta_link_text; ?></h3>
		<a class="pill collaborate-cta__link chev-cta" href="<?= get_permalink($this->simple_cta_link_id); ?>"><?= $this->simple_cta_link_label; ?> <i class="fa fa-chevron-right" aria-hidden="true"></i></a>
	</section>
</section>