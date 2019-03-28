<?php
class customer extends CI_Controller{
    
    function __construct() {
        parent::__construct();
        $this->load->model('model_customer');
        chek_session();
    }
    
    function index(){
        $this->load->library('pagination');
        $config['base_url'] = base_url().'index.php/custtomer/index/';
        $config['total_rows'] = $this->model_customer->tampilkan_data()->num_rows();
        $config['per_page'] = 3; 
        $this->pagination->initialize($config); 
        $data['paging']     =$this->pagination->create_links();
        $halaman            =  $this->uri->segment(3);
        $halaman            =$halaman==''?0:$halaman;
        $data['record']     =    $this->model_customer->tampilkan_data_paging($halaman,$config['per_page']);
        $this->template->load('template','customer/lihat_data',$data);
    }
    
    function post()
    {
        if(isset($_POST['submit'])){
            // proses customer
            $this->model_customer->post();
            redirect('customer');
        }
        else{
            //$this->load->view('customer/form_input');
            $this->template->load('template','customer/form_input');
        }
    }
    
    function edit()
    {
        if(isset($_POST['submit'])){
            // proses customer
            $this->model_customer->edit();
            redirect('customer');
        }
        else{
            $id=  $this->uri->segment(3);
            $data['record']=  $this->model_customer->get_one($id)->row_array();
            //$this->load->view('customer/form_edit',$data);
            $this->template->load('template','customer/form_edit',$data);
        }
    }
    
    
    function delete()
    {
        $id=  $this->uri->segment(3);
        $this->model_customer->delete($id);
        redirect('customer');
    }
}