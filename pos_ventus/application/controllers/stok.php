<?php
class stok extends ci_controller{
    
        function __construct() {
        parent::__construct();
        $this->load->model('model_barang');
        chek_session();
    }

    
    function index(){
        $data['record']     =    $this->model_barang->tampil_data();
        //$this->load->view('barang/lihat_data',$data);
        $this->template->load('template','stok/lihat_data',$data);
    }
    
    
    
    function word(){
        header("Content-type=appalication/vnd.ms-word");
        header("content-disposition:attachment;filename=laporanstok.doc");
        $data['record']     =    $this->model_barang->tampil_data();
        $this->load->view('stok/msword',$data);
    }
}