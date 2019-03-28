<?php
include 'koneksi.php';
$username=$_POST['username'];
$sql=  mysql_query("select * from member where username='$username'");
$hasil=  mysql_num_rows($sql);
if($hasil==1)
{
    echo "username  <b>$username</b> sudah digunakan, pilih username lain";
}
else
{
    echo "username <b>$username</b> bisa digunakan";
}
?>
