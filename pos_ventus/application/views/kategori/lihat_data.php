<h3>Kategori Barang</h3>
<?php
echo anchor('kategori/post','Tambah Data',array('class'=>'btn btn-danger btn-sm'))
?>
<hr>
<table class="table table-bordered">
    <tr><th>No</th><th>Nama Kategori</th><th colspan="2">Operasi</th></tr>
    <?php
    $no=1+$this->uri->segment(3);
    foreach ($record->result() as $r)
    {
        echo "<tr>
            <td width='10'>$no</td>
            <td>$r->nama_kategori</td>
            <td width='10'>".anchor('kategori/edit/'.$r->kategori_id,'Edit')."</td>
            <td width='10'>".anchor('kategori/delete/'.$r->kategori_id,'Delete')."</td>
            </tr>";
        $no++;
    }
    ?>
</table>

<?php
echo $paging;
?>

