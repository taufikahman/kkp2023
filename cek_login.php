<?php
    //ini_set("display_errors",0);                            
    include('admin/koneksi.php');

    if(isset($_POST['go'])){
	
    $username = $_POST['username'];
    $password = $_POST['password'];
                                 
    $sql = mysqli_query($koneksi, "SELECT * FROM user WHERE username='$username' AND password='$password' ") 
	or die(mysqli_error());

    if(mysqli_num_rows($sql) == 0){
	echo "<script>alert('Username / Password salah!')</script>";
    echo '<script type="text/javascript">window.location="index.html"</script>';

   }else{
		
	session_start();

    $row = mysqli_fetch_assoc($sql);
	
    $_SESSION['id_login']	= $row['id_login'];
    $_SESSION['level']      = $row['level'];
                                    
    if($row['level'] == 'Admin'){
    echo "<script>alert('Success')</script>";
    echo '<script type="text/javascript">window.location="admin/index.php"</script>';
    }
	elseif($row['level'] == 'Dosen'){
    echo "<script>alert('Success')</script>";
    echo '<script type="text/javascript">window.location="dosen/index.php"</script>';
                                     
    }
    else{
    header('location:index.html');
    }
}
}
?>