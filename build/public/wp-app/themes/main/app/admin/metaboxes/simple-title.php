<table class="form-table widefat importers striped">
	<tbody>
		<tr>
			<td valign="top" class="label">Small Title</td>
			<td>
				<?=$form->text('small')->setStyle(['width' => '100%'])->toHtml();?>
			</td>
		</tr>
		<tr>
			<td valign="top" class="label">Big Title</td>
			<td>
				<?=$form->text('big')->setStyle(['width' => '100%'])->toHtml();?>
			</td>
		</tr>
	</tbody>
</table>