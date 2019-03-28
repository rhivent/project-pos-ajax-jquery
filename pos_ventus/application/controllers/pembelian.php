<?php
class pembelian extends ci_controller{

    function __construct() {
        parent::__construct();
        $this->load->model(array('model_barang','model_supplier','model_transaksi_beli'));

    }

    function index(){
        $data['barang']=  $this->model_barang->tampil_data();
        $data['supplier']=$this->model_supplier->tampilkan_data();
        $this->template->load('template','pembelian/form',$data);
    }

    function input_ajax(){
        $this->model_transaksi_beli->insert_temp();
    }


    function hapus_temp(){
        $id=$_GET['id'];
        $this->model_transaksi_beli->hapus_temp($id);
    }
    function chekout(){
        $id=$this->model_transaksi_beli->chekout();
        $this->model_transaksi_beli->ubah_status($id);
    }



    function load_temp(){
        echo "<table class='table table-bordered'>
        <tr>
            <th>No</th>
            <th>Kode Barang</th>
            <th>Nama Barang</th>
            <th>Qty</th>
            <th>Harga Beli</th>
            <th>Subtotal</th>
            <th>Operasi</th>
        </tr>";
        $no=1;
        $data=  $this->model_transaksi_beli->tampilkan_temp()->result();
        foreach ($data as $d){
            echo "<tr id='dataku$d->belidetail_id'>
                <td>$no</td>
                <td>$d->kode_barang</td>
                <td>$d->nama_barang</td>
                <td>$d->qty</td>
                <td>$d->harga</td>
                <td>".($d->qty*$d->harga)."</td>
                <td><button onClick='hapus($d->belidetail_id)'>Hapus</button></td>
                </tr>";
            $no++;
        }
    echo"</table>";
    }

}
