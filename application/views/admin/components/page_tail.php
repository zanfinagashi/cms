 <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    
     <?php if(isset($sortable) && $sortable === TRUE): ?>

      <script src="<?php echo site_url('../../public_html/js/jquery-ui-1.9.1.custom.min.js'); ?>"></script>
      <script src="<?php echo site_url('../../public_html/js/jquery.mjs.nestedSortable.js'); ?>"></script>
    
    <?php endif; ?>
    
    <script src="<?php echo site_url('../../public_html/js/bootstrap.min.js'); ?>"></script>
      <script src="<?php echo site_url('../../public_html/js/bootstrap.min.js'); ?>"></script>
    <script src="<?php echo site_url('../../public_html/js/bootstrap-datepicker.js'); ?>"></script>
  </body>
</html>