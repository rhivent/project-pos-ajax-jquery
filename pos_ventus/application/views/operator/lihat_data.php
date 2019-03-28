<h3>Data Operator</h3>
<?php
echo anchor('operator/post','Tambah Data',array('class'=>'btn btn-danger btn-sm'))
?>
<hr>
<table class="table table-bordered">
    <tr><th>No</th><th>Nama Lengkap</th><th>Username</th><th>Login Terakhir</th><th colspan="2">Operasi</th></tr>
    <?php
    $no=1;
    foreach ($record->result() as $r)
    {
        echo "<tr>
            <td width='10'>$no</td>
            <td>$r->nama_lengkap</td>
            <td>$r->username</td>
            <td>$r->last_login</td>
            <td  width='20'>".anchor('operator/edit/'.$r->operator_id,"<span class='glyphicon glyphicon-share'></span>",array('title'=>'edit data '.$r->nama_lengkap))."</td>
            <td  width='20'>".anchor('operator/delete/'.$r->operator_id,"<span class='glyphicon glyphicon-trash'></span>",array('title'=>'delete data '.$r->nama_lengkap))."</td>
            </tr>";
        $no++;
    }
    ?>
</table>