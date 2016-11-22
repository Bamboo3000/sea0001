<div class="<?= $item['class'] ?>">
	<?php if(!in_array($item['form']->type, ['checkbox', 'radio'])):?>
		<label for="<?= $item['form']->name ?>"><?= $item['form']->label? : ucfirst($item['form']->name) ?> 
		<?php if($item['form']->required): ?>
			<span>*</span>
		<?php endif; ?>
		</label>
	<?php endif; ?>
	<?= $item['form']->toHtml() ?>
	<?php if($item['form']->description): ?>
		<p style="margin-top:10px"><small><?= $item['form']->description ?></small></p>
	<?php endif; ?>
</div>