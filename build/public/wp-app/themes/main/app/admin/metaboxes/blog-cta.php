<table class="form-table widefat importers striped">
	<tbody>
		<tr>
			<td valign="top" class="label">Call to action</td>
			<td>
				<table>
					<tr>
						<td>Text above: <?=$form->text('link_text')->toHtml(); ?></td>
						<td><?=$form->pages('link_id')->setParams(['post_type' => 'blog'])->toHtml();?></td>
						<td>Label: <?=$form->text('link_label')->toHtml();?></td>
					</tr>
				</table>
			</td>
		</tr>
	</tbody>
</table>