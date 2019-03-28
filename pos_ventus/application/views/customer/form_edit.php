<h3>Edit Data Customer</h3>
<?php
echo form_open('customer/edit');
?>
<input type="hidden" value="<?php echo $record['customer_id']?>" name="id">
<table class="table table-bordered">
    <tr><td width="130">Nama Customer</td>
        <td><div class="col-sm-4""><input type="text" value="<?php echo $record['nama_customer']?>" name="nama" class="form-control" placeholder="Nama Customer"></div>
       </td></tr>
       <tr><td width="130">No Telpon</td>
        <td><div class="col-sm-4""><input type="text" value="<?php echo $record['telpon_customer']?>" name="telpon" class="form-control" placeholder="No Telpon"></div>
       </td></tr>
           <tr><td width="130">Alamat</td>
               <td><textarea class="form-control" name="alamat"><?php echo $record['alamat']?></textarea>
       </td></tr>
    <tr><td colspan="2"><button type="submit" class="btn btn-primary btn-sm" name="submit">Simpan</button>
        <?php echo anchor('customer','Kembali',array('class'=>'btn btn-primary btn-sm'))?>
        </td></tr>
</table>
</form>