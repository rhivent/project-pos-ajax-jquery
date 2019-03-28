<?php
class main extends CI_Controller{
    
    function __construct() {
        parent::__construct();
        $this->load->model('model_status');
    }


    function index()
    {
        $this->load->view('view_main');
    }
    
    
    function post_status(){
        $this->model_status->simpan_status();
    }
    
    function hapus_status()
    {
        $id=$_GET['status_id'];
        $this->model_status->delete($id);
    }
    
    function load_status()
    {
        $data=$this->model_status->tampilkan_status();
        foreach ($data->result() as $r)
        {
            echo "<div class='statusku$r->status_id'>";
            echo $r->username."<br>";
            echo $r->tanggal.'<br>';
            echo $r->status.'<br>';
            echo "<a onclick='hapus($r->status_id)'>Hapus</a><hr></div>";
        }
    }
    
    
    function search_status()
    {
        $keyword=$_GET['keyword'];
        $field  =$_GET['field'];
        $data=$this->model_status->cari_status($keyword,$field);
        foreach ($data->result() as $r)
        {
            echo $r->username."<br>";
            echo $r->tanggal.'<br>';
            echo $r->status.'<hr>';
        }
    }
}