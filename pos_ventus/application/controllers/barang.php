<?php
class Barang extends CI_Controller{
    
    function __construct() {
        parent::__construct();
        $this->load->model('model_barang');
        chek_session();
    }


    function index()
    {
        $this->load->library('pagination');
        $config['base_url'] = base_url().'index.php/barang/index/';
        $config['total_rows'] = $this->model_barang->tampil_data()->num_rows();
        $config['per_page'] = 13; 
        $this->pagination->initialize($config); 
        $data['paging']     =$this->pagination->create_links();
        $halaman            =  $this->uri->segment(3);
        $halaman            =$halaman==''?0:$halaman;
        $data['record']     =    $this->model_barang->tampil_data_paging($halaman,$config['per_page']);
        //$this->load->view('barang/lihat_data',$data);
        $this->template->load('template','barang/lihat_data',$data);
    }
    
    function post()
    {
        if(isset($_POST['submit'])){
            // proses barang
            $nama       =   $this->input->post('nama_barang');
            $kategori   =   $this->input->post('kategori');
            $harga      =   $this->input->post('harga');
            $data       = array('nama_barang'=>$nama,
                                'kategori_id'=>$kategori,
                                'kode_barang'=> kodebarang(),
                                'harga'=>$harga);
            $this->model_barang->post($data);
            redirect('barang');
        }
        else{
            $this->load->model('model_kategori');
            $data['kategori']=  $this->model_kategori->tampilkan_data()->result();
            //$this->load->view('barang/form_input',$data);
            $this->template->load('template','barang/form_input',$data);
        }
    }
    
    
    function edit()
    {
       if(isset($_POST['submit'])){
            // proses barang
            $id         =   $this->input->post('id');
            $nama       =   $this->input->post('nama_barang');
            $kategori   =   $this->input->post('kategori');
            $harga      =   $this->input->post('harga');
            $data       = array('nama_barang'=>$nama,
                                'kategori_id'=>$kategori,
                                'harga'=>$harga);
            $this->model_barang->edit($data,$id);
            redirect('barang');
        }
        else{
            $id=  $this->uri->segment(3);
            $this->load->model('model_kategori');
            $data['kategori']   =  $this->model_kategori->tampilkan_data()->result();
            $data['record']     =  $this->model_barang->get_one($id)->row_array();
            //$this->load->view('barang/form_edit',$data);
            $this->template->load('template','barang/form_edit',$data);
        }
    }
    
    
    function delete()
    {
        $id=  $this->uri->segment(3);
        $this->model_barang->delete($id);
        redirect('barang');
    }
    
    
    function test()
    {
        echo waktu_indo();
    }
}