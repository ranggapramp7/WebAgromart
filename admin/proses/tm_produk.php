<?php 
include '../../koneksi/koneksi.php';

$kode = $_POST['kode'];
$nm_produk = $_POST['nama'];
$harga = $_POST['harga'];
$desk = $_POST['desk'];
$kategori = $_POST['kategori']; // Ambil kategori dari form
$nama_gambar = $_FILES['files']['name'];
$size_gambar = $_FILES['files']['size'];
$tmp_file = $_FILES['files']['tmp_name'];
$eror = $_FILES['files']['error'];

// Validasi jika tidak ada gambar yang dipilih
if ($eror === 4) {
    echo "
    <script>
    alert('TIDAK ADA GAMBAR YANG DIPILIH');
    window.location = '../tm_produk.php';
    </script>
    ";
    die;
}

// Validasi ekstensi gambar
$ekstensiGambar = ['jpg', 'jpeg', 'png'];
$ekstensiGambarValid = explode(".", $nama_gambar);
$ekstensiGambarValid = strtolower(end($ekstensiGambarValid));

if (!in_array($ekstensiGambarValid, $ekstensiGambar)) {
    echo "
    <script>
    alert('EKSTENSI GAMBAR HARUS JPG, JPEG, PNG');
    window.location = '../tm_produk.php';
    </script>
    ";
    die;
}

// Validasi ukuran gambar
if ($size_gambar > 1000000) {
    echo "
    <script>
    alert('UKURAN GAMBAR TERLALU BESAR');
    window.location = '../tm_produk.php';
    </script>
    ";
    die;
}

// Nama gambar baru
$namaGambarBaru = uniqid() . "." . $ekstensiGambarValid;

// Upload file gambar
if (move_uploaded_file($tmp_file, "../../image/produk/" . $namaGambarBaru)) {
    // Insert ke tabel produk
    $result = mysqli_query($conn, "INSERT INTO produk (kode_produk, nama, image, deskripsi, harga, kategori) 
                                   VALUES ('$kode', '$nm_produk', '$namaGambarBaru', '$desk', '$harga', '$kategori')");

    if ($result) {
        echo "
        <script>
        alert('PRODUK BERHASIL DITAMBAHKAN');
        window.location = '../m_produk.php';
        </script>
        ";
    } else {
        echo "
        <script>
        alert('PRODUK GAGAL DITAMBAHKAN');
        window.location = '../tm_produk.php';
        </script>
        ";
    }
} else {
    echo "
    <script>
    alert('GAGAL MENGUPLOAD GAMBAR');
    window.location = '../tm_produk.php';
    </script>
    ";
}
?>
