<h3>Laporan Stok Barang</h3>


<table class="table table-bordered">
    <tr><th>No</th><th>Kode Barang</th><th>Nama Barang</th><th>Kategori Barang</th><th>Stok</th></tr>
    <?php
    $no=1;
    foreach ($record->result() as $r)
    {
        echo "<tr>
            <td width='10'>$no</td>
            <td width='130'>$r->kode_barang</td>
            <td>$r->nama_barang</td>
            <td>$r->nama_kategori</td>
            <td>".  chek_stok($r->barang_id)." Item</td>
            
            </tr>";
        $no++;
    }
    ?>
</table>

