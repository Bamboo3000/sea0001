<table class="form-table widefat importers striped">
	<tbody>
		<tr>
			<td valign="top" class="label">Title</td>
			<td><?=$form->text('title')->setStyle(['width' => '100%'])->toHtml(); ?></td>
		</tr>
		<tr>
			<td valign="top" class="label">Image</td>
			<td><?=$form->image('image')->toHtml();?></td>
		</tr>	
	</tbody>
</table>