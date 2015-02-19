<br><br><h1><b>Recently modified articles</b></h1><br><br>

<?php if(count($recent_articles)){ ;  ?>
<ul>
<?php foreach($recent_articles as $article){;  ?>
    <li>
    <?php echo anchor('admin/article/edit/' .  $article->id ,e($article->title));?>
    -
    <?php echo date('Y-m-d', strtotime(e($article->modified)));?>
    </li>
<?php }?>
</ul>
<?php }?>