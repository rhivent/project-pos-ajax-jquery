<?php
include 'koneksi.php';
?>
<body onload="tampilkankabupaten()"></body>

<script src="jquery-2.1.1.min.js"></script>
<script type="text/javascript">
    
function tampilkankabupaten()
{
    var propinsi_id=$("#propinsi").val();
    $.ajax({
        type:"GET",
        url:"kabupaten.php",
        data:"propinsi_id="+propinsi_id,
        success:function(html)
        {
           $("#kabupaten").html(html);  
        }
        
    });
}
</script>
<select id="propinsi" onchange="tampilkankabupaten()">
    <?php
    $propinsi=  mysql_query("select * from propinsi");
    while($p=  mysql_fetch_array($propinsi))
    {
        echo "<option value='$p[id_propinsi]'>$p[nama_propinsi]</option>";
    }
    ?>
</select>

<select id="kabupaten"></select>