<table class="form-table widefat importers striped">
	<tbody>
		<?php /*<tr>
			<td valign="top" class="label">Title</td>
			<td><?=$form->text('title')->setStyle(['width' => '100%'])->toHtml();?>
				<p><small>May be used to override '<?= $this->application->helper('posts')->getPostParam('post_title'); ?>' title tag and or in listing titles. It may also be used as h1 if h1 is not set.</small></p>
			</td>
		</tr>
		<tr>
			<td valign="top" class="label">H1 override</td>
			<td><?=$form->text('h1')->setStyle(['width' => '100%'])->toHtml();?>
				<p><small>Overrides h1 if design allows.</small></p>
			</td>
		</tr>
		<tr>
			<td valign="top" class="label">H2 override</td>
			<td><?=$form->text('h2')->setStyle(['width' => '100%'])->toHtml();?>
				<p><small>Overrides h2 if design allows.</small></p>
			</td>
		</tr> */?>
		<tr>
			<td valign="top" class="label">Page image</td>
			<td><?=$form->image('image')->toHtml();?>
				<p><small>The default image to represent this page object in both detail and listing pages.</small></p>
			</td>
		</tr>
 		<?php /*<tr>
			<td valign="top" class="label">Summary</td>
			<td><?=$form->textarea('summary')->setStyle(['width' => '100%'])->toHtml();?>
				<p><small>The summary of the content to be found on this page. Make this unique for better SEO.</small></p>
			</td>
		</tr> */ ?>
	</tbody>
</table>