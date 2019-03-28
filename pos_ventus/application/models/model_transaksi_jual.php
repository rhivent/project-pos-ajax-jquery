<?php
class model_transaksi_jual extends ci_model{
    
    
    
    function post_temp(){
        $barang=$_GET['barang'];
        $qty=$_GET['qty'];
        $brg=  $this->db->get_where('barang',array('nama_barang'=>$barang))->row_array();
        $data=array('barang_id'=>$brg['barang_id'],
                    'status'=>0,
                    'qty'=>$qty,
                    'harga_jual'=>$brg['harga']);
         $this->db->insert('transaksi_jual_detail',$data);
    }
    
    function transaksi_temp(){
        $query="SELECT br.kode_barang,br.nama_barang,jd.harga_jual,jd.qty,jd.detail_id
                FROM transaksi_jual_detail as jd,barang as br
                WHERE br.barang_id=jd.barang_id and jd.status=0";
        return $this->db->query($query);
    }
    
    function hapus_temp($id){
        $this->db->where('detail_id',$id);
        $this->db->delete('transaksi_jual_detail');
    }
    
    function selesai($customer_id){
        $data=array('customer_id'=>$customer_id,
                    'tanggal_transaksi'=>  tanggal(),
                    'operator_id'=>1);
         $this->db->insert('transaksi_jual',$data);
         $return= $this->db->get_where('transaksi_jual',$data)->row_array();
         return $return['transaksi_id'];
    }
    
    function update_status($transaksi_id){
        $query="UPDATE transaksi_jual_detail
                SET status='1',transaksi_id='$transaksi_id' 
                WHERE status='0'";
        $this->db->query($query);
    }
}