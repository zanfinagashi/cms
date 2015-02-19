<?php
    
    class HelloWorld_Model extends CI_model {
        
        function HelloWorld_model()
        {
         
            
        }
        
        function getData()
        {
            $this->load->database();
            $query = $this->db->get('users');
            if($query->num_rows() < 0)
            {
                
            }else{
                return $query->result();
            }
            
        }
        
    }
    

    
?>