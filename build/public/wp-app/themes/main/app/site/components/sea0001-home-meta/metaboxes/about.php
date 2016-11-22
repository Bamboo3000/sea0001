<table class="form-table widefat importers striped">
	<tbody>
		<tr>
			<td valign="top" class="label">Main title</td>
			<td><?=$form->text('main-title')->setStyle(['width' => '75%'])->toHtml(); ?></td>
		</tr>
		<tr>
			<td valign="top" class="label">Sub title</td>
			<td><?=$form->text('sub-title')->setStyle(['width' => '75%'])->toHtml(); ?></td>
		</tr>
		<tr>
			<td valign="top" class="label">Text</td>
			<td><?=$form->richtext('text')->setStyle(['width' => '100%'])->toHtml(); ?></td>
		</tr>
		<tr>
			<td valign="top" class="label">Image right</td>
			<td><?=$form->image('image_right')->toHtml(); ?></td>
		</tr>
		<tr>
			<td valign="top" class="label">Image left</td>
			<td><?=$form->image('image_left')->toHtml(); ?></td>
		</tr>
	</tbody>
</table>	
<table class="form-table widefat importers striped">
	<tbody>
		<tr>
			<td valign="top" class="label">Stats title</td>
			<td><?=$form->text('stats-title')->setStyle(['width' => '75%'])->toHtml(); ?></td>
		</tr>
		<tr>
			<td valign="top" class="label">Stat 1 title</td>
			<td><?=$form->text('stat1-title')->setStyle(['width' => '50%'])->toHtml(); ?></td>
			<td valign="top" class="label">Stat 1 number</td>
			<td><?=$form->text('stat1-number')->setStyle(['width' => '50%'])->toHtml(); ?></td>
		</tr>
		<tr>
			<td valign="top" class="label">Stat 2 title</td>
			<td><?=$form->text('stat2-title')->setStyle(['width' => '50%'])->toHtml(); ?></td>
			<td valign="top" class="label">Stat 2 number</td>
			<td><?=$form->text('stat2-number')->setStyle(['width' => '50%'])->toHtml(); ?></td>
		</tr>
		<tr>
			<td valign="top" class="label">Stat 3 title</td>
			<td><?=$form->text('stat3-title')->setStyle(['width' => '50%'])->toHtml(); ?></td>
			<td valign="top" class="label">Stat 3 number</td>
			<td><?=$form->text('stat3-number')->setStyle(['width' => '50%'])->toHtml(); ?></td>
		</tr>
		<tr>
			<td valign="top" class="label">Stat 4 title</td>
			<td><?=$form->text('stat4-title')->setStyle(['width' => '50%'])->toHtml(); ?></td>
			<td valign="top" class="label">Stat 4 number</td>
			<td><?=$form->text('stat4-number')->setStyle(['width' => '50%'])->toHtml(); ?></td>
		</tr>
	</tbody>
</table>