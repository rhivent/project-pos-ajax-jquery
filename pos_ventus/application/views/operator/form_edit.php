<h3>Edit Data Operator</h3>
<?php
echo form_open('operator/edit');
?>
<input type="hidden" value="<?php echo $record['operator_id']?>" name="id">
<table class="table table-bordered">
    <tr><td width="120">Nama Lengkap</td>
        <td><input type="text" name="nama" class="form-control" placeholder="nama lengkap" value="<?php echo $record['nama_lengkap']?>">
       </td></tr>
    <tr><td>Username</td>
        <td><input type="text" name="username" class="form-control" placeholder="username" value="<?php echo $record['username']?>">
       </td></tr>
     <tr><td>Password</td>
        <td><input type="password" name="password" class="form-control" placeholder="password">
       </td></tr>
 <tr><td>Level</td>
        <td><div class="col-sm-3"">
                <?php
                $level=array('penjualan'=>'Penjualan','pembelian'=>'Pembelian');
                echo form_dropdown('level',$level,$record['level'],'class="form-control"');
                ?>
            </div>
       </td></tr>
    <tr><td colspan="2"><button type="submit" class="btn btn-primary btn-sm" name="submit">Simpan</button>
        <?php echo anchor('operator','Kembali',array('class'=>'btn btn-primary btn-sm'))?></td></tr>
</table>
</form>