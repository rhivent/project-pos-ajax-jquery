<h3>Data Customer</h3>
<?php
echo anchor('customer/post','Tambah Data',array('class'=>'btn btn-danger btn-sm'))
?>
<hr>
<table class="table table-bordered">
    <tr><th>No</th>
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
            <td width='130'>$r->kode_customer</td>
            <td>$r->nama_customer</td>
            <td>$r->telpon_customer</td>
            <td>$r->alamat</td>
            <td width='10'>".anchor('customer/edit/'.$r->customer_id,'Edit')."</td>
            <td width='10'>".anchor('customer/delete/'.$r->customer_id,'Delete')."</td>
            </tr>";
        $no++;
    }
    ?>
</table>

<?php
echo $paging;
?>

