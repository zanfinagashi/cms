<section>
    <h2>News Articles</h2>
    <?php echo anchor('admin/article/edit', '<span class="glyphicon glyphicon-plus"></span> Add an article');?>
    <table class="table table-hover">
        <thead>
            <tr>                
                <th>Title</th>
                <th>Publication Date</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody >
 <?php if(count($articles)){ foreach ($articles as $article){ ?>
        <tr>
                <td><?php echo anchor('admin/article/edit/'. $article->id, $article->title);?></td>
                <td><?php echo $article->pubdate;?></td>
                <td><?php echo btn_edit('admin/article/edit/'.$article->id);?></td>
                <td><?php echo btn_delete('admin/article/delete/'. $article->id);?></td>
        </tr>
 <?php }} else{ ?>
        <tr>
                <td colspan="3">We could not find any article.</td>
        </tr>
 <?php } ?>

 
        </tbody>
    </table>    
</section>