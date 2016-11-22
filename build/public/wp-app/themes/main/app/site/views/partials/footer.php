	<footer>
		<div class="footer-up">
			<div class="row">
				<div class="col-l-1-of-4 col-s-1-of-2 col-xs-1-of-1 footer-section">
					<hr>
					<span><?= $this->option->footer_col1_title; ?></span>
				</div>
				<div class="col-l-1-of-4 col-s-1-of-2 col-xs-1-of-1 footer-section">
					<hr>
					<span><?= $this->option->footer_col2_title; ?></span>
					<?php 
						$args=array(
						  'post_type' => 'post',
						  'post_status' => 'publish',
						  'posts_per_page' => 12,
						);
						$post_query = null;
						$post_query = new WP_Query($args);
					?>
					<div class="textwidget">
						<p>
						<?php if ( $post_query->have_posts() ) : ?>
							<?php while ( $post_query->have_posts() ) : $post_query->the_post(); ?>
								<a href="<?php the_permalink(); ?>"><?php the_title(); ?></a><br/>
							<?php endwhile; ?>
						<?php endif; ?>
						</p>
					</div>
				</div>
				<div class="col-l-1-of-4 col-s-1-of-2 col-xs-1-of-1 footer-section hot-skills">
					<hr>
					<span><?= $this->option->footer_col3_title; ?></span>
				</div>
				<div class="col-l-1-of-4 col-s-1-of-2 col-xs-1-of-1 footer-section">
					<hr>
					<span><?= $this->option->footer_col4_title; ?></span>
				</div>
			</div>
		</div>
		<div class="footer-down">
			
		</div>
	</footer>