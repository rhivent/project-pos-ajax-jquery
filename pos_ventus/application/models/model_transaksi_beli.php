<?php
class model_transaksi_beli extends ci_model{

    
    function insert_temp(){
        $barang =   $_GET['barang'];
        $qty    =   $_GET['qty'];
        $harga  =   $_GET['harga'];
        $id_barang=  $this->db->get_where('barang',array('nama_barang'=>$barang))->row_array();
        $data   =   array(
                    'barang_id'=>$id_barang['barang_id'],
                    'harga'=>$harga,
                    'qty'=>$qty,
                    'status'=>0);
        // status 1 sudah diproses, 2 belum diproses
        $this->db->insert('transaksi_beli_detail',$data);
    }
    
    function tampilkan_temp(){
        $query="SELECT b.kode_barang,b.nama_barang,td.*
                FROM transaksi_beli_detail as td,barang as b 
                WHERE b.barang_id=td.barang_id and status=0";
        return $this->db->query($query);
    }
    
    
    function hapus_temp($id){
        $this->db->where('belidetail_id',$id);
        $this->db->delete('transaksi_beli_detail');
    }
    
    
    function chekout(){
        $supplier   =   $_GET['supplier'];
        $sid        =  $this->db->get_where('supplier',array('nama_supplier'=>$supplier))->row_array();
        $data       =   array(  'supplier_id'=>$sid['supplier_id'],
                                'tanggal'=>  tanggal());
        $this->db->insert('transaksi_beli',$data);
        $get_id     = $this->db->get_where('transaksi_beli',$data)->row_array();
        return $get_id['transaksibeli_id'];
    }
    
    function ubah_status($id){
        $this->db->query(   "UPDATE  transaksi_beli_detail 
                            SET status='1',transaksibeli_id='$id' 
                            where status=0");
    }
}