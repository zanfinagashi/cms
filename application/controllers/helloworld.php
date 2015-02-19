<?php
    class Helloworld extends CI_Controller{
        
        public function __construct()
        {
            
            parent::__construct();
            
            echo "This is the constructor";           
            
            
        }
        function index()
        {
           $this->load->model('helloworld_model');
           
           $data['result'] = $this->helloworld_model->getData();
           $data['page_title'] = "CI hello world app";
           
           $this->load->view('helloworld_view',$data);
        }
    
    }
    
?>