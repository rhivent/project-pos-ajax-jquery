<h3>Data Supplier</h3>
<?php
echo anchor('supplier/post','Tambah Data',array('class'=>'btn btn-danger btn-sm'))
?>
<hr>
<table class="table table-bordered">
    <tr><th>No</th>
        <th>Kode Supplier</th>
        <th>Nama Customer</th>
        <th>No Telpon</th>
        <th>Alamat</th>
        <th colspan="2">Operasi</th></tr>
    <?php
    $no=1+$this->uri->segment(3);
    foreach ($record->result() as $r)
    {
        echo "<tr>
            <td width='10'>$no</td>
            <td width='130'>$r->kode_supplier</td>
            <td>$r->nama_supplier</td>
            <td>$r->telpon_supplier</td>
            <td>$r->alamat_supplier</td>
            <td width='10'>".anchor('supplier/edit/'.$r->supplier_id,'Edit')."</td>
            <td width='10'>".anchor('supplier/delete/'.$r->supplier_id,'Delete')."</td>
            </tr>";
        $no++;
    }
    ?>
</table>

<?php
echo $paging;
?>

