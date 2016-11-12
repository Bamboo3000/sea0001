<table class="form-table widefat importers striped">
	<tbody>
		<tr>
			<td valign="top" class="label">First email text</td>
			<td><?=$form->text('first_email_text')->setStyle(['min-width' => '50%'])->toHtml();?></td>
		</tr>
		<tr>
			<td valign="top" class="label">First email address</td>
			<td><?=$form->text('first_email_address')->setStyle(['min-width' => '50%'])->toHtml();?></td>
		</tr>
		<tr>
			<td valign="top" class="label">Second email text</td>
			<td><?=$form->text('second_email_text')->setStyle(['min-width' => '50%'])->toHtml();?></td>
		</tr>
		<tr>
			<td valign="top" class="label">Second email address</td>
			<td><?=$form->text('second_email_address')->setStyle(['min-width' => '50%'])->toHtml();?></td>
		</tr>
	</tbody>
</table>
<?php for ($i = 1; $i <= 1; $i++): ?>
	<h4> &mdash; Social media link <?= $i; ?> &mdash; </h4>
	<table class="form-table widefat importers striped">
		<tbody>
			<tr>
				<td valign="top" class="label">Social media name <small>(without spaces or capital letters)</small></td>
				<td><?= $form->text('social_name_' . $i)->setStyle(['min-width' => '50%'])->toHtml(); ?></td>
			</tr>
			<tr>
				<td valign="top" class="label">Social media link</td>
				<td><?= $form->text('social_link_' . $i)->setStyle(['min-width' => '50%'])->toHtml(); ?></td>
			</tr>
<!-- 			<tr>
				<td valign="top" class="label">Order</td>
				<td><?php //$form->select('order_' . $i)->setOptions([ 1 => 1, 2, 3, 4])->toHtml();?></td>
			</tr> -->
		</tbody>
	</table>
<?php endfor; ?>
<table class="form-table widefat importers striped">
	<tbody>
		<tr>
			<td valign="top" class="label">Map zoom ( 0-22 )</td>
			<td><?=$form->text('map_zoom')->toHtml();?></td>
		</tr>
	</tbody>
</table>