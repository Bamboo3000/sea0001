<article class="article">
	<section class="hero hero--natural" style="background-image: url('<?= $this->helper('images')->getImageSource($this->page_image, 'hero-large'); ?>');">
		<div class="hero-text content-container full-width">
			<p class="hero-header notes"><?= $this->getAuthorName(); ?></p>
			<h1 class="hero-title"><?= $this->getPageTitle(); ?></h1>
			<p class="hero__post-meta">
				<span class="hero__post-category"><?= $this->helper('opa0007.misc')->getTopCategory($this->ID); ?></span>
				<span class="hero__post-date"><?= $this->helper('posts')->getNiceDate($this->helper('arrays')->get('post_date')); ?></span>
			</p>
		</div>
	</section>
	<section class="article-content article-container">
		<div class="text-container article-text">
			<?= $this->post_content; ?>
		</div>
	</section>
	<?php $this->component('related-pages'); ?>
	<?php if($this->blog_cta_link_id || $this->simple_cta_link_id): ?>
	<section class="collaborate-cta">
		<?php if($this->simple_cta_link_id): ?>
		<h3 class="collaborate-cta__title"><?= $this->simple_cta_link_text; ?></h3>
		<a class="pill collaborate-cta__link chev-cta" href="<?= get_permalink($this->simple_cta_link_id); ?>"><?= $this->simple_cta_link_label; ?> <i class="fa fa-chevron-right" aria-hidden="true"></i></a>
	<?php elseif($this->blog_cta_link_id) : ?>
		<h3 class="collaborate-cta__title"><?= $this->blog_cta_link_text; ?></h3>
		<a class="pill collaborate-cta__link chev-cta" href="<?= get_permalink($this->blog_cta_link_id); ?>"><?= $this->blog_cta_link_label; ?> <i class="fa fa-chevron-right" aria-hidden="true"></i></a>
	<?php endif; ?>
	</section>
	<?php endif; ?>
</article>