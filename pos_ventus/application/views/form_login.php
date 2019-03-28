<?php
  echo form_open('auth/login');
?>

<table class="table table-bordered">
    <tr><td>username</td><td><input class="form-control" type="text" name="username" placeholder="username"></td></tr>
    <tr><td>Password</td><td><input class="form-control" type="password" name="password" placeholder="password"></td></tr>
    <tr><td colspan="2"><button type="submit" class="btn btn-default" name="submit">Login</button></td></tr>
</table>



</form>
