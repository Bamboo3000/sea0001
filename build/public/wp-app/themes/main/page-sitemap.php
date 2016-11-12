<section class="news-single">
	<div class="container">
		<div class="row">
			<div class="col-sm-10 col-sm-push-1 col-xs-12 news-single-content">
				<div class="news-single-content-title font-size-xxxxlarge color-darkgrey1">
					<p>
						<?= $this->getPageTitle() ?> 
					</p>
					<hr class="horizontal-thick bg-sea">
				</div>
				<br/>
				<div class="news-single-content-text">
					<ul>
						<?php
						$wpPageList = wp_list_pages(['echo' => false]);
						$wpPageList = substr($wpPageList, strpos($wpPageList, '<ul>') + 4);
						$wpPageList = substr($wpPageList, 0, strrpos($wpPageList, '</ul>'));
						echo $wpPageList;
						?>
					</ul>
				</div>
			</div>
		</div>
	</div>
</section>

<?php $this->component('basic-share') ?>