<header>
	<div data-menu="height" class="header-cont content-container">
		<a href="/">
			<div class="logo">
				<object class="logo__img" type="image/svg+xml" data="assets/img/opalbond-logo-main.svg">
				  Opalbond logo
				</object>
				<p class="logo__suffix"></p>
			</div>
		</a>
		<nav class="header-nav" >
			<div class="secondary-nav">
				<?php $this->component('topbarmenu'); ?>
			</div>
			<div class="main-nav">
				<?php $this->component('menu'); ?> 
			</div>
		</nav>
	</div>
	<div data-id="sub-nav__container" class="sub-nav__container" style="display: none">
		<div class="sub-nav__inner content-container">
			<div class="sub-nav">
				<?php $this->component('subnav'); ?>
			</div>
		</div>
	</div>
</header>