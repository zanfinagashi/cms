<html>
    <head>
        <title><?php echo $page_title ?> </title>
    </head>
    <body>
            <?php
                foreach($result as $row):
            ?>
            <h3><?php echo $row->id ?></h3>
            <p><?php echo $row->emri ?></p>
            <br/>
            <?php endforeach;?>
    </body>
</html>