<?php 
	$optionsType = [
        'client' => 'Client',
        'candidate' => 'Candidate'
    ];
    $optionsHome = [
        'yes' => 'Yes',
        'no' => 'No'
    ];
 ?>
<table class="form-table widefat importers striped">
	<tbody>
		<tr>
			<td valign="top" class="label">Summary</td>
			<td>
				<?=$form->richtext('title_' . $i)->setStyle(['width' => '100%'])->toHtml(); ?>
			</td>
		</tr>
		<tr>
			<td valign="top" class="label">Author info</td>
			<td><?=$form->text('author_' . $i)->toHtml(); ?></td>
		</tr>
		<tr>
			<td valign="top" class="label">Author type</td>
			<td>
				<?=$form->radio('type_' . $i)->setOptions($optionsType)->toHtml(); ?><br/>
			</td>
		</tr>
		<tr>
			<td valign="top" class="label">On homepage?</td>
			<td>
				<?=$form->radio('home_' . $i)->setOptions($optionsHome)->toHtml(); ?><br/>
			</td>
		</tr>
	</tbody>
</table>