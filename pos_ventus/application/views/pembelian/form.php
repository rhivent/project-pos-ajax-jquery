<body onload="load_data_temp()"></body>
<script type="text/javascript" src="<?php echo base_url()?>assets/js/jquery.min.js"></script>
<script type="text/javascript">
   
function selesai(){
    var supplier=$("#idsupplier").val();
    if(supplier==''){
        alert('Pilih Data SUpplier');
        die;
    }
    else{
        $.ajax({
        type:"GET",
        url:"pembelian/chekout",
        data:"supplier="+supplier,
        success:function(html){
            alert('transaksi_berhasil');
             load_data_temp();
        }
        });
    }
    
}   
function load_data_temp(){
$.ajax({
    type:"GET",
    url:"pembelian/load_temp",
    data:"",
    success:function(html){
        $("#list").html(html);
    }
})    
}

function hapus(id){
    $.ajax({
       type:"GET",
       url:"pembelian/hapus_temp",
       data:"id="+id,
       success:function(html){
           $("#dataku"+id).hide(2000);
       }
    });
}

function add_barang(){
    var barang=$("#idbarang").val();
    var qty=$("#idqty").val();
    var harga=$("#idharga").val();
    $.ajax({
        type:"GET",
        url:"pembelian/input_ajax",
        data:"barang="+barang+"&qty="+qty+"&harga="+harga,
        success:function(html){
            load_data_temp();
        }
    });
}
</script>
<h3>Form Transaksi Pembelian</h3>
<?php
echo form_open('transaksi');
?>
<table class="table table-bordered">
    <tr><td>Supplier</td><td>
             <div class="col-sm-6">
                 <input list="supplier" class="form-control" id="idsupplier" placeholder="supplier">
            </div>
        </td><tr>
    <tr><td>Barang</td><td>
            <div class="col-sm-4">
                <input list="barang" class="form-control" id="idbarang" name="nama_barang" placeholder="nama barang">
            </div>
             <div class="col-sm-1">
                 <input type="text" class="form-control" id="idqty" name="qty" placeholder="QTY">
            </div>
             <div class="col-sm-3">
                 <input type="text" class="form-control" id="idharga" name="harga" placeholder="Harga">
            </div>
        </td><tr>
    <tr><td colspan="2">
            <button type="button" onclick="selesai()" class="btn btn-primary btn-sm" name="submit">Simpan</button>
            <button type="button" onclick="add_barang()" class="btn btn-primary btn-sm" name="add">Add Barang</button>
        <?php echo anchor('barang','Kembali',array('class'=>'btn btn-primary btn-sm'))?></td></tr>
</table>
</form>

<div id="list">
    
</div>

<datalist id="barang">
    <?php
    foreach ($barang->result() as $b)
    {
        echo "<option value='$b->nama_barang'>";
    }
    ?>
</datalist>

<datalist id="supplier">
    <?php
    foreach ($supplier->result() as $s)
    {
        echo "<option value='$s->nama_supplier'>";
    }
    ?>
</datalist>
