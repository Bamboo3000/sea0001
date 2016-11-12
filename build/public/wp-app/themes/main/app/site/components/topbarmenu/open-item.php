<?php if($item->title === 'Linkedin') : ?>
	<li class="linkedin">
		<a href="<?= $item->url ?>"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
<?php else : ?>
	<li>
		<a href="<?= $item->url ?>"><?= $item->title ?></a>
<?php endif; ?>