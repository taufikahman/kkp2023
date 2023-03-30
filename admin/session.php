<?php include ('koneksi.php');
 session_start(); 
if (!isset($_SESSION['id_login']) || (trim($_SESSION['id_login']) == '')) { ?>
<script>
window.location = "../";
</script>
<?php 
}
$session_id=$_SESSION['id_login'];

$user_query = mysqli_query($koneksi, "select * from user where id_login = '$session_id'")or die(mysqli_error());
$user_row = mysqli_fetch_array($user_query);


?>