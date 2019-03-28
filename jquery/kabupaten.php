<?php
include 'koneksi.php';
$propinsi_id=$_GET['propinsi_id'];
echo "<select id='kabupaten'>";
    $kabupaten=  mysql_query("select * from kabupaten where id_propinsi='$propinsi_id'");
    while($k=  mysql_fetch_array($kabupaten))
    {
        echo"<option value='$k[id_kabupaten]'>$k[nama_kabupaten]</option>";
    }
    echo"</select>";
?>
