<?php $this->load->view('admin/components/page_head')?>

  <body>
    <ul class="nav nav-tabs navbar-inverse" role="tablist">
        <li><a class="brand" href="<?php echo site_url('admin/dashboard/#'); ?>"><?php echo $meta_title; ?> </a></li>
        <li><a href="<?php echo site_url('admin/dashboard'); ?>">Dashboard</a></li>
        <li><?php echo anchor('admin/page', 'Pages'); ?></li>
        <li><?php echo anchor('admin/article', 'News Articles'); ?></li>
        <li><?php echo anchor('admin/page/order', 'Order pages'); ?></li>
        <li><?php echo anchor('admin/user', 'Users'); ?></li>
        
    </ul>
    
    <div class="container">
        <div class="row">
            <div class="col-lg-8"
               
 <?php $this->load->view($subview); ?>                   
                
            </div>
            <div class="col-lg-3">
                
                    <?php echo mailto('zanfinagashi@gmail.com','<i class="glyphicon glyphicon-user"></i> zanfinagashi@gmail.com');?><br>
                    <?php echo anchor('admin/user/logout', '<i class="glyphicon glyphicon-off"></i> logout');?><br>
                          
            </div>
        </div>
    </div>
    <!-- Button trigger modal -->


<?php $this->load->view('admin/components/page_tail')?>
<script type="text/javascript">
    jQuery(document).ready(function($){
        var url = window.location.href;
        $('.nav a[href="'+url+'"]').parent().addClass('active');
    });
</script>
   