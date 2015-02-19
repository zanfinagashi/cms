<section>
    <h2>Pages</h2>
    <?php echo anchor('admin/page/edit', '<span class="glyphicon glyphicon-plus"></span> Add a page');?>
    <table class="table table-hover">
        <thead>
            <tr>
                <th>Title</th>
                <th>Parent</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody >
 <?php if(count($pages)){ foreach ($pages as $page){ ?>
        <tr>
                <td><?php echo anchor('admin/page/edit/'. $page->id, $page->title);?></td>
                <td><?php echo $page->parent_title;?></td>
                <td><?php echo btn_edit('admin/page/edit/'.$page->id);?></td>
                <td><?php echo btn_delete('admin/page/delete/'. $page->id);?></td>
        </tr>
 <?php }} else{ ?>
        <tr>
                <td colspan="3">We could not find any page.</td>
        </tr>
 <?php } ?>

 
        </tbody>
    </table>    
</section>