<?php 
/* 
* Template Name: Blog Template 

 ()()		That's an indentation bunny.
 ('.')		He's here to protect this file for propper indentation.
 (()()		Please don't mess with a bunny...
*(_()()		He can be really CrAzY!#$%&@%$

*/ 
?>

<section>
	<div class="section-header page-header">
		<p class="section-header__title notes">Opalbond Blog</p>
		<h2 class="section-header__desc">Read our expert reviews</h2>
	</div>
	<?php $this->component('blog', ['type' => 'feature']); ?>
	<?php $this->component('blog', ['type' => 'listing']); ?>
</section>