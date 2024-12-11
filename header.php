<?php 
session_start();
include 'koneksi/koneksi.php';
if(isset($_SESSION['kd_cs'])){
    $kode_cs = $_SESSION['kd_cs'];
}
?>
<!DOCTYPE html>
<html>
<head>
    <title>AGROMART</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap-theme.css">
    <script  src="js/jquery.js"></script>
    <script  src="js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container-fluid">
        <div class="row top">
            <center>
                <div class="col-md-4" style="padding: 3px;">
                    <span> <i class="glyphicon glyphicon-earphone"></i> +6281212398104</span>
                </div>

                <div class="col-md-4"  style="padding: 3px;">
                    <span><i class="glyphicon glyphicon-envelope"></i> agromart@gmail.com</span>
                </div>

                <div class="col-md-4"  style="padding: 3px;">
                    <span>AGROMART</span>
                </div>
            </center>
        </div>
    </div>

    <nav class="navbar navbar-default" style="padding: 5px;">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#" style="color: #04b50f"><b>AGROMART</b></a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <form class="navbar-form navbar-left" method="GET" action="search.php">
                    <div class="form-group">
                        <input type="text" name="search" class="form-control" placeholder="Cari produk...">
                    </div>
                    <button type="submit" class="btn btn-success">Search</button>
                </form>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="index.php">Home</a></li>
                    <li><a href="produk.php">Produk</a></li>
                    <li><a href="about.php">Tentang Kami</a></li>
                    <li><a href="manual.php">Panduan</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Tambahkan script search.php -->
</body>
</html>
