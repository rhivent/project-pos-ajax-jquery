<?php
class Model_supplier extends CI_Model{
    
    
    
    function tampilkan_data(){
        
        return $this->db->get('supplier');
    }
    
  function tampilkan_data_paging($halaman,$batas)
  {
      return $this->db->query("select * from supplier limit $halaman,$batas");
  }
    
    function post(){
        $data=array(
           'nama_supplier'=>  $this->input->post('nama'),
           'alamat_supplier'=>  $this->input->post('alamat'),
            'kode_supplier'=>  kodesupplier(),
           'telpon_supplier'=>  $this->input->post('telpon')
                    );
        $this->db->insert('supplier',$data);
    }
    
    
    function edit()
    {
        $data=array(
           'nama_supplier'=>  $this->input->post('nama'),
           'alamat_supplier'=>  $this->input->post('alamat'),
           'telpon_supplier'=>  $this->input->post('telpon')
                    );
        $this->db->where('supplier_id',$this->input->post('id'));
        $this->db->update('supplier',$data);
    }
    
    function get_one($id)
    {
        $param  =   array('supplier_id'=>$id);
        return $this->db->get_where('supplier',$param);
    }
    
    
    function delete($id)
    {
        $this->db->where('supplier_id',$id);
        $this->db->delete('supplier');
    }
}