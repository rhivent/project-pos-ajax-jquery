<?php


function chek_session(){
    $ci=& get_instance();
    if($ci->session->userdata('status_login')!='oke'){
        redirect('auth/login');
    }
}
function tanggal()
{
    return date('Y-m-d');
}

function tgl_indo($tanggals){
    // 2014-08-24
    // 24-08-2014
    $tanggal=  substr($tanggals,8,2 );
    $bulan=  substr($tanggals, 5,2);
    $tahun=  substr($tanggals, 0,4);
    
    return $tanggal."-".  bulan($bulan)."-".$tahun;
}

function bulan($bulan)
{
    switch ($bulan){
        
        case 1: return 'Januari';
            break;
        case 2: return 'Februari';
            break;
        case 3: return 'Maret';
            break;
        case 4: return 'April';
            break;
        case 5: return 'Mei';
            break;
        case 6: return 'Juni';
            break;
        case 7: return 'Juli';
            break;
        case 8: return 'Agustus';
            break;
        case 9: return 'September';
            break;
        case 1: return 'Oktober';
            break;
        case 1: return 'November';
            break;
        case 1: return 'Desember';
            break;
    }
  
}

function kodebarang()
{
    // BR001
    $CI=& get_instance();
    $chek=$CI->db->query("select kode_barang from barang order by barang_id DESC");
    if($chek->num_rows()>0){
        $chek=$chek->row_array();
        $lastKode=$chek['kode_barang'];
        $ambil=  substr($lastKode, 2,3)+1;
        $newCode=  "BR".sprintf("%03s",$ambil);
        return $newCode;
    }
    else{
        return 'BR001';
    }
}

function kodesupplier(){
    $CI=& get_instance();
    $chek=$CI->db->query("select kode_supplier from supplier order by supplier_id DESC");
    if($chek->num_rows()>0){
        $chek=$chek->row_array();
        $lastKode=$chek['kode_supplier'];
        $ambil=  substr($lastKode, 2,3)+1;
        $newCode=  "BR".sprintf("%03s",$ambil);
        return $newCode;
    }
    else{
        return 'SP001';
    }
}

function kodecustomer(){    
    $CI=& get_instance();
    $chek=$CI->db->query("select kode_supplier from supplier order by supplier_id DESC");
    if($chek->num_rows()>0){
        $chek=$chek->row_array();
        $lastKode=$chek['kode_supplier'];
        $ambil=  substr($lastKode, 2,3)+1;
        $newCode=  "BR".sprintf("%03s",$ambil);
        return $newCode;
    }
    else{
        return 'SP001';
    }
}

function chek_stok($barang_id){
     $CI=& get_instance();
     $qb="select sum(qty) as jumlah_beli from transaksi_beli_detail where barang_id='$barang_id'";
     $qj="select sum(qty) as jumlah_jual from transaksi_jual_detail where barang_id='$barang_id'";
     $beli=$CI->db->query($qb)->row_array();
     $jual=$CI->db->query($qj)->row_array();
     return $beli['jumlah_beli']-$jual['jumlah_jual'];
}


?>
