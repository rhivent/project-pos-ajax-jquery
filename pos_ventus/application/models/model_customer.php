<?php
class Model_customer extends CI_Model{
    
    
    
    function tampilkan_data(){
        
        return $this->db->get('customer');
    }
    
  function tampilkan_data_paging($halaman,$batas)
  {
      return $this->db->query("select * from customer limit $halaman,$batas");
  }
    
    function post(){
        $data=array(
           'nama_customer'=>  $this->input->post('nama'),
           'alamat'=>  $this->input->post('alamat'),
           'kode_customer'=>  kodecustomer(),
           'telpon_customer'=>  $this->input->post('telpon')
                    );
        $this->db->insert('customer',$data);
    }
    
    
    function edit()
    {
        $data=array(
           'nama_customer'=>  $this->input->post('nama'),
           'alamat'=>  $this->input->post('alamat'),
           'telpon_customer'=>  $this->input->post('telpon')
                    );
        $this->db->where('customer_id',$this->input->post('id'));
        $this->db->update('customer',$data);
    }
    
    function get_one($id)
    {
        $param  =   array('customer_id'=>$id);
        return $this->db->get_where('customer',$param);
    }
    
    function get_id_by_name($name){
        $param  =   array('nama_customer'=>$name);
        return $this->db->get_where('customer',$param); 
    }
    
    function delete($id)
    {
        $this->db->where('customer_id',$id);
        $this->db->delete('customer');
    }
}