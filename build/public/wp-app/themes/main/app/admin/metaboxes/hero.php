<table class="form-table widefat importers striped">
	<tbody>
		<tr>
			<td valign="top" class="label">Hero image</td>
			<td><?=$form->image('image')->toHtml();?></td>
		</tr>
		<tr>
			<td valign="top" class="label">First line of text</td>
			<td><?=$form->textarea('first_line')->setRows(2)->toHtml(); ?></td>
		</tr>
		<tr>
			<td valign="top" class="label">Second line of text</td>
			<td><?=$form->textarea('second_line')->setRows(2)->toHtml(); ?></td>
		</tr>
		<tr>
			<td valign="top" class="label">Third line of text</td>
			<td><?=$form->textarea('third_line')->setRows(2)->toHtml(); ?></td>
		</tr>
		<tr>
			<td valign="top" class="label">Call to action</td>
			<td>
				<table>
					<tr>
						<td><?=$form->pages('link_id')->toHtml();?></td>
						<td>Label: <?=$form->text('link_label')->toHtml();?></td>
					</tr>
				</table>
			</td>
		</tr>
	</tbody>
</table>