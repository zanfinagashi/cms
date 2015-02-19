<?php
class Admin_Controller extends MY_Controller{
    
    function __construct()
    {
        parent::__construct();
        $this->data['meta_title'] = 'CMS with codeigniter';
        $this->load->helper('form');
        $this->load->library('form_validation');
        $this->load->model('user_m');
        $this->load->library('session');
        
        $exception_urls = array(
                            'admin/user/login',
                            'admin/user/logout'
                                );
        if(in_array(uri_string(), $exception_urls) == FALSE){
            if($this->user_m->loggedin()== FALSE){
            redirect('admin/user/login');
            }
        }
        
    }
}
?>