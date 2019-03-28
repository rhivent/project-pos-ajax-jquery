<?php
class model_status extends ci_model{
    
    
    function simpan_status()
    {
        $tanggal=date('Y-m-d');
        $data=array('status'=>$_POST['status'],
                    'member_id'=>2,
                    'tanggal'=>$tanggal);
        $this->db->insert('status',$data);
    }
    
    
    function delete($id)
    {
        $this->db->where('status_id',$id);
        $this->db->delete('status');
    }
    
    function tampilkan_status()
    {
        $query= "SELECT s.*,m.username 
                FROM status as s,member as m 
                WHERE m.member_id=s.member_id
                ORDER by status_id DESC";
        return $this->db->query($query);
    }
    
    
    function cari_status($keyword,$field)
    {
        if($field=='username')
        {
            $fields="m.username";
        }
        else
        {
            $fields="s.status";
        }
        $query= "SELECT s.*,m.username 
                FROM status as s,member as m 
                WHERE m.member_id=s.member_id and $fields like '%$keyword%'
                ORDER by status_id DESC";
        return $this->db->query($query);
    }
}
