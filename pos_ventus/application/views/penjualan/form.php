<body onload="tampilkan()">
<script type="text/javascript" src="<?php echo base_url()?>assets/js/jquery.min.js"></script>
<script type="text/javascript">
function add_barang(){
    var barang=$("#barangid").val();
    var qty=$("#qty").val();
    $.ajax({
        type:"GET",
        url:"penjualan/post_ajax",
        data:"barang="+barang+"&qty="+qty,
        success:function(html){
            tampilkan();
        }
    })
}

function selesai(){
 var customers=$("#customers").val();
$.ajax({
        type:"GET",
        url:"penjualan/selesai",
        data:'customer='+customers,
        success:function(html){
            alert('transaksi berhasil');
            tampilkan();
        }
    })
}

function hapus(id){
$.ajax({
        type:"GET",
        url:"penjualan/hapus_temp",
        data:'id='+id,
        success:function(html){
            tampilkan();
        }
    })
}

function tampilkan(){
$.ajax({
        type:"GET",
        url:"penjualan/tampilkan",
        data:'',
        success:function(html){
            $("#list_transaksi").html(html);
        }
    })
}
</script>
<h3>Form Penjualan</h3>
<table class="table table-bordered">
    <tr><td width="100">Customer</td><td>
            <input list="customer" id="customers" placeholder="masukan nama customer" class="form-control">
        </td></tr>
    <tr><td>Barang</td><td>
            <div class="col-sm-6">
                <input list="barang" id="barangid" placeholder="masukan nama barang" class="form-control">
            </div>
            <div class="col-sm-3">
             <input type="text" id="qty" class="form-control" placeholder="Jumlah Barang">
            </div>
        </td></tr>
    <tr><td colspan="2">
            <button id="selesai" onclick="selesai()" class="btn btn-primary btn-sm">Selesai</button>
            <button id="add" onclick="add_barang()"  class="btn btn-primary btn-sm">Add Barang</button>
        </td></tr>
</table>

<div id="list_transaksi"></div>

<datalist id="customer">
    <?php
    foreach ($customer->result() as $c){
        echo "<option value='$c->nama_customer'>";
    }
    ?>
</datalist>

<datalist id="barang">
    <?php
    foreach ($barang->result() as $b)
    {
        echo "<option value='$b->nama_barang'>";
    }
    ?>
</datalist>