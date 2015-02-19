<h3 style="font-size: 20px"><?php echo empty($article->id) ? 'Add a new article' : 'Edit article ' . $article->title; ?></h3>
<?php echo validation_errors(); ?>
<?php echo form_open(); ?>
<br>
<table class="table">
	
	
	
	<tr >
		<td>Publication Date</td>
		<td><?php echo form_input('pubdate', set_value('pubdate', $article->pubdate), 'id="datepicker"'); ?></td>
	</tr>
	<tr>
		<td>Title</td>
		<td><?php echo form_input('title', set_value('name', $article->title)); ?></td>
	</tr>
	<tr>
		<td>Slug</td>
		<td><?php echo form_input('slug', set_value('slug', $article->slug)); ?></td>
	</tr>
	<tr>
		<td>Body</td>
		<td><?php echo form_textarea('body', set_value('body',$article->body), 'class="tinymce"'); ?></td>
	</tr>
	
	<tr>
		<td></td>
		<td><?php echo form_submit('submit', 'Save', 'class="btn btn-primary"'); ?></td>
	</tr>
</table>
<?php echo form_close();?>
<script type="text/javascript">
            // When the document is ready
            $(document).ready(function () {
                
                $('#datepicker').datepicker({
                    format: "yyyy-mm-dd"
                });  
            
            });
</script>