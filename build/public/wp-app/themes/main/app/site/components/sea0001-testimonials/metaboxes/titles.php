<table class="form-table widefat importers striped">
	<tbody>
		<tr>
			<td valign="top" class="label">Section main title</td>
			<td><?=$form->text('main_title')->setStyle(['width' => '75%'])->toHtml(); ?></td>
		</tr>
		<tr>
			<td valign="top" class="label">Section sub title</td>
			<td><?=$form->text('sub_title')->setStyle(['width' => '75%'])->toHtml(); ?></td>
		</tr>
	</tbody>
</table>