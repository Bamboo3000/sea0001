<?php if($this->breadcrumb): $i = 1 ?>
<div class="breadcrumb-container content-container">
	<p class="breadcrumbs">
		<?php foreach($this->breadcrumb as $breadcrumb): $i++?>

			<?php if($breadcrumb->is_link): ?>
				<a href="<?=$breadcrumb->link?>"><?=$breadcrumb->title?></a> 
			<?php else: ?>
				<?=$breadcrumb->title?>
			<?php endif;?>

			<?php if(count($this->breadcrumb) >= $i): ?>
				<span>&nbsp;&middot;&nbsp;</span>
			<?php endif; ?>

		<?php endforeach; ?>
	</p>
</div>
<?php endif; ?>