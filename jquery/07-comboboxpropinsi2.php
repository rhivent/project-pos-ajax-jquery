<?php
include 'koneksi.php';
?>
<script src="jquery-2.1.1.min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
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
    });
</script>

<script type="text/javascript">
    $(document).ready(function(){
        $("#propinsi").change(function(){
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
        });
    });
</script>


<select id="propinsi"
    <?php
    $propinsi=  mysql_query("select * from propinsi");
    while($p=  mysql_fetch_array($propinsi))
    {
        echo "<option value='$p[id_propinsi]'>$p[nama_propinsi]</option>";
    }
    ?>
</select>

<select id="kabupaten"></select>