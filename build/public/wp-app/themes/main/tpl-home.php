<?php 
/*
* Template Name: Home Page
*/
?>

<header class="home-bg vheight-half" style="background-image: url('<?= $this->helper('images')->getImageSource($this->main_claim_image, 'hero-large'); ?>');">
	<div class="centerV">
		<div class="claim white">
			<h1 class="text-center">
				<?= $this->main_claim_title; ?>
			</h1>
		</div>
		<div class="main-search">
			<?php get_search_form(); ?>
		</div>
	</div>
</header>

<section class="categories">
	<div class="row">
		<div class="col-l-1-of-4 col-m-1-of-3 col-xs-1-of-1">
			<aside>
				<hr>
				<span>
					<?= $this->categories_main_title; ?>
				</span>
				<h2>
					<?= $this->categories_sub_title; ?>
				</h2>
			</aside>
		</div>
		<div class="col-l-3-of-4 col-m-2-of-3 col-xs-1-of-1">
			<div class="row categories-list">
				<?php /*
					$args = array(
						'hide_empty' => 0
					);
				 ?>
				 <?php foreach (get_categories($args) as $cat) : ?>
						<?php if(z_taxonomy_image_url($cat->term_id)) : ?>
						<div class="col-xl-1-of-3 col-s-1-of-2 col-xs-1-of-1 the-category">
							<figure>
								<a href="<?php echo get_category_link($cat->term_id); ?>">
									<img src="<?php echo z_taxonomy_image_url($cat->term_id); ?>" />
								</a>
								<figcaption>
									<?php if(ICL_LANGUAGE_CODE == 'en') : ?>
										<a href="<?php echo get_category_link($cat->term_id); ?>"><?php echo $cat->cat_name; ?> Jobs</a>
									<?php else : ?>
										<a href="<?php echo get_category_link($cat->term_id); ?>"><?php echo $cat->cat_name; ?> Vacatures</a>
									<?php endif; ?>
								</figcaption>
							</figure>
						</div>
					<?php endif; ?>
				<?php endforeach; */?>
			</div>	
		</div>
	</div>
</section>
<section class="about">
	<div class="row">
		<div class="col-l-1-of-4 col-m-1-of-3 col-xs-1-of-1">
			<aside>
				<hr>
				<span>
					<?= $this->about_main_title; ?>
				</span>
				<h2>
					<?= $this->about_sub_title; ?>
				</h2>
			</aside>
		</div>
		<div class="col-l-3-of-4 col-m-2-of-3 col-xs-1-of-1 bg-white">
			<div class="row parentH">
				<div class="col-l-1-of-2 col-xs-1-of-1 about-text">
					<?= $this->about_text; ?>
				</div>
				<div class="col-l-1-of-2 col-xs-1-of-1 backgroundF" style="background-image:url('<?= $this->helper('images')->getImageSource($this->about_image_right, ''); ?>');"></div>
			</div>
			<div class="row parentH">
				<div class="col-l-1-of-2 col-xs-1-of-1 backgroundF" style="background-image:url('<?= $this->helper('images')->getImageSource($this->about_image_left, ''); ?>');"></div>
				<div class="col-l-1-of-2 col-xs-1-of-1 our-stats">
					<hr>
					<h4>
						<?= $this->about_stats_title; ?>
					</h4>
					<div class="row">
						<div class="col-s-1-of-4 col-xs-1-of-2 the-stat">
							<div class="hexagon">
								<span><?= $this->about_stat1_number; ?></span>
							</div>
							<p class="small"><?= $this->about_stat1_title; ?></p>
						</div>
						<div class="col-s-1-of-4 col-xs-1-of-2 the-stat">
							<div class="hexagon">
								<span><?= $this->about_stat2_number; ?></span>
							</div>
							<p class="small"><?= $this->about_stat2_title; ?></p>
						</div>
						<div class="col-s-1-of-4 col-xs-1-of-2 the-stat">
							<div class="hexagon">
								<span><?= $this->about_stat3_number; ?></span>
							</div>
							<p class="small"><?= $this->about_stat3_title; ?></p>
						</div>
						<div class="col-s-1-of-4 col-xs-1-of-2 the-stat">
							<div class="hexagon">
								<span><?= $this->about_stat4_number; ?></span>
							</div>
							<p class="small"><?= $this->about_stat4_title; ?></p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<?php $this->component('sea0001-testimonials'); ?>