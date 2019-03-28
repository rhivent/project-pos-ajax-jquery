<?php
class penjualan extends ci_controller{
    
    function __construct() {
        parent::__construct();
        $this->load->model(array('model_customer','model_barang','model_transaksi_jual'));
    }
    
    function index(){
        $data['customer']=  $this->model_customer->tampilkan_data();
        $data['barang']=  $this->model_barang->tampil_data();
        $this->template->load('template','penjualan/form',$data);
    }
    
    
    function post_ajax(){
        $this->model_transaksi_jual->post_temp();
    }
    
    
    function tampilkan(){
        echo "<table class='table table-bordered'>
            <tr><th>No</th><th>Kode Barang</th><th>Nama Barang</th><th>Harga</th><th>Qty</th><th>Subtotal</th><th></th></tr>";
        $data=  $this->model_transaksi_jual->transaksi_temp()->result();
        $no=1;
        foreach ($data as $r){
            echo "<tr>
                <td>$no</td>
                <td>$r->kode_barang</td>
                <td>$r->nama_barang</td>
                <td>$r->harga_jual</td>
                <td>$r->qty</td>
                <td>".$r->harga_jual*$r->qty."</td>
                <td><p onClick='hapus($r->detail_id)'>Hapus</p></td>
                </tr>";
            $no++;
        }
        echo"</table>";
    }
    
    
    function hapus_temp(){
        $id=$_GET['id'];
        $this->model_transaksi_jual->hapus_temp($id);
    }
    
    function selesai(){
        $customer       =   $_GET['customer'];
        $customer_id    =   $this->model_customer->get_id_by_name($customer)->row_array();
        $transaksi_id   =   $this->model_transaksi_jual->selesai($customer_id['customer_id']);
        // update transaksijual detail
        $this->model_transaksi_jual->update_status($transaksi_id);
    }
}