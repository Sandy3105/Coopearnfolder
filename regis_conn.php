<?php
$conn=mysqli_connect('localhost','root','','coop_registration');
// var_dump($conn);
if(!$conn){
    echo "<script>alert('connection failed')</script>";
}
?>