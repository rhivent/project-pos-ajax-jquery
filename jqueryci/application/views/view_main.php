<script src="<?php echo base_url()?>assets/jquery-2.1.1.min.js"></script>
<body onload="load_status()"></body>

<script type="text/javascript">
    $(document).ready(function(){
        $("#keyword").keyup(function(){
            var keyword=$("#keyword").val();
            var field  =$("#field").val();
            $.ajax({
                type:"GET",
                url:"main/search_status",
                data:"keyword="+keyword+"&field="+field,
                success:function(html){
                    $("#list_status").html(html);
                }
            });
            
        });
    });
</script>


<script type="text/javascript">
    $(document).ready(function(){
        $("#submitstatus").click(function(){
            var status=$("#status").val();
            $.ajax({
                type:"POST",
                url:"main/post_status",
                data:"status="+status,
                success:function(html){
                    load_status();
                }
            });
            
        });
    });
</script>

<script type="text/javascript">
    
function hapus(id)
{
       $.ajax({
                type:"GET",
                url:"main/hapus_status",
                data:'status_id='+id,
                success:function(html){
                    //$("#list_status").html(html);
                    //alert('data sudah dihapus');
                    $(".statusku"+id).hide(300);
                }
            });
}


function load_status()
{
    $.ajax({
                type:"GET",
                url:"main/load_status",
                data:'',
                success:function(html){
                    $("#list_status").html(html);
                }
            });
}
</script>
<select id="field">
    <option value="status">Status</option>
    <option value="username">Nama</option>
</select>
<input type="text" id="keyword" placeholder="Kata Kunci">
<br>
<textarea id="status"></textarea>
<br>
<button id="submitstatus">Posting Status</button>
<hr>
<div id="list_status"></div>