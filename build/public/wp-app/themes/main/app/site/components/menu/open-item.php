<?php $isActive = (boolean)($item->is_current || $item->is_ancestor); ?>
<li class="<?= $isActive? ' active': null; ?>">
	<a href="<?= $item->url ?>"><?= $item->title ?></a>
