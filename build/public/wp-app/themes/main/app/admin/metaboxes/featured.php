<?php 
	$options = [
		'yes' => 'Yes',
	];
 ?>
<table class="form-table widefat importers striped">
	<tbody>
		<tr>
			<td>
				Is this post featured? <?= $form->checkboxes('feature')->setOptions($options)->setMulti(true)->toHtml(); ?>
			</td>
		</tr>
	</tbody>
</table>