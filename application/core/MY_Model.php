<?php
class MY_Model extends CI_Model{
    
    protected $_table_name = '';
    protected $_primary_key = 'id';
    protected $_primary_filter = 'intval';
    protected $_order_by = '';
    public $_rules = array();
    protected $_timestamps = FALSE;
    
    function __construct(){
            parent::__construct();
    }
    
    function array_from_post($fields){
        $data = array();
        foreach($fields as $field){
            $data[$field] = $this->input->post($field);
        }
        return $data;
    }
    
    function get($id = NULL, $single = FALSE){
        if($id != NULL){            
           $filter = $this->_primary_filter;
           $id = $filter($id);
           $this->db->where($this->_primary_key, $id);
           $method = 'row'; 
        }else if ($single == TRUE){
            $method = 'row';
        }else{
            $method = 'result';
        }
        
        if(!count($this->db->ar_orderby)){
            $this->db->order_by($this->_order_by);
        }
        
       return $this->db->get($this->_table_name)->$method();    
    }
    function get_by($where, $single = FALSE){
        $this->db->where($where);
        return $this->get(NULL, $single);
    }
    
    function save($data, $id = NULL){
        
        //Set timestamps
        if($this->_timestamps == TRUE){
            $now = date('Y-m-d H:i:s');
            $id || $data['created'] = $now;//nese nje e dhene ekziston ne db kemi id ne te kunderten e shtojme nje fushe te re me daten e krijimit
            $data['modified'] = $now;
            
        }
        
        //Insert
        if($id === NULL){            
            !isset($data[$this->_primary_key]) || $data[$this->_primary_key] = NULL;
            $this->db->set($data);
            $this->db->insert($this->_table_name);
            $id= $this->db->insert_id();
        }
        
        //Update
        else{
            $filter = $this->_primary_filter;
            $id = $filter($id);
            $this->db->set($data);
            $this->db->where($this->_primary_key, $id);
            $this->db->update($this->_table_name);
        }
        
        return $id;
    }
    
    function delete($id){
        $filter = $this->_primary_filter;
        $id = $filter($id);
        
        if(!$id){
            return FALSE;
        }
        $this->db->where($this->_primary_key, $id);
        $this->db->limit(1);
        $this->db->delete($this->_table_name);
    }
}

?>





















