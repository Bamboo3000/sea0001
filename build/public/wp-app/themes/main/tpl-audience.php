<?php 
/*
* Template Name: Audience

 ()()		That's an indentation bunny.
 ('.')		He's here to protect this file for propper indentation.
 (()()		Please don't mess with a bunny...
*(_()()		He can be really CrAzY!#$%&@%$

*/
 ?>

 <section class="audience">
	<section class="hero hero--natural" style="background-image:url('<?= $this->helper('images')->getImageSource($this->hero_image, 'hero-large'); ?>');">
		<div class="hero-text content-container full-width">
			<p class="hero-header notes"><?= $this->hero_first_line; ?></p>
			<h1 class="hero-title"><?= $this->hero_second_line; ?></h1>
		</div>
	</section>
	<section class="article-content article-container">
		<div class="text-container article-text">
			<?= $this->post_content; ?>
			<div class="article-text__seperator">
				<?php $this->component('opa0007-accordion'); ?>
			</div>
		</div>
	</section>
	<section class="collaborate-cta">
		<h3 class="collaborate-cta__title"><?= $this->simple_cta_link_text; ?></h3>
		<a class="pill collaborate-cta__link chev-cta" href="<?= get_permalink($this->simple_cta_link_id); ?>"><?= $this->simple_cta_link_label ?> <i class="fa fa-chevron-right" aria-hidden="true"></i></a>
	</section>
</section>