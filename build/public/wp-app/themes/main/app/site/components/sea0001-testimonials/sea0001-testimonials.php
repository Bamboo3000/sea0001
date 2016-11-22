<section class="testimonials">
	<div class="row">
		<div class="col-l-1-of-4 col-m-1-of-3 col-xs-1-of-1">
			<aside>
				<hr>
				<span>
					<?= $this->titles_left_main_title; ?>
				</span>
				<h2>
					<?= $this->titles_left_sub_title; ?>
				</h2>
			</aside>
		</div>
		<div class="col-l-3-of-4 col-m-2-of-3 col-xs-1-of-1 testimonials-list bg-lgrey">
			<div id="carousel" class="owl-carousel">
			<?php foreach($this->items as $item):?>
  				<?php $item = (object)$item;?>
				<div class="item the-testimonial">
					<div class="col-xxl-7-of-10 col-xl-9-of-10 col-xs-1-of-1">
						<?= $item->summary; ?>
						<p class="signature">
							<?= $item->author; ?>
						</p>
					</div>
			    </div>
			<?php endforeach; ?>
			</div>
		</div>
	</div>
</section>