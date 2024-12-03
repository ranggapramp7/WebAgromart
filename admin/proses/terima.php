<?php 
include '../../koneksi/koneksi.php';
$inv = $_GET['inv'];

$result = mysqli_query($conn, "SELECT * FROM produksi WHERE invoice = '$inv'");

while ($row = mysqli_fetch_assoc($result)) {
    $kodep = $row['kode_produk'];

    // Ambil stok bahan baku dari inventory berdasarkan kode produk
    $inventory = mysqli_query($conn, "SELECT * FROM inventory WHERE kode_bk = '$kodep'");
    $r_inv = mysqli_fetch_assoc($inventory);

    if ($r_inv) {
        $qtyorder = $row['qty']; // Jumlah yang dipesan
        $stokTersedia = $r_inv['qty']; // Stok yang tersedia di inventory

        // Cek apakah stok mencukupi
        if ($stokTersedia >= $qtyorder) {
            $stokBaru = $stokTersedia - $qtyorder;

            // Update stok di inventory
            $updateStok = mysqli_query($conn, "UPDATE inventory SET qty = '$stokBaru' WHERE kode_bk = '$kodep'");

            if ($updateStok) {
                // Update status pesanan menjadi diterima
                mysqli_query($conn, "UPDATE produksi SET terima = '1', status = '0' WHERE invoice = '$inv'");

                echo "
                <script>
                alert('PESANAN BERHASIL DITERIMA, BAHAN BAKU TELAH DIKURANGKAN');
                window.location = '../produksi.php';
                </script>
                ";
            } else {
                echo "
                <script>
                alert('GAGAL MENGURANGI STOK, PESANAN DITOLAK');
                window.location = '../produksi.php';
                </script>
                ";
            }
        } else {
            // Jika stok tidak mencukupi
            echo "
            <script>
            alert('PESANAN TIDAK BISA DITERIMA, STOK TIDAK MENCUKUPI');
            window.location = '../produksi.php';
            </script>
            ";
        }
    } else {
        // Jika tidak ada data inventory yang sesuai
        echo "
        <script>
        alert('DATA INVENTORY TIDAK DITEMUKAN');
        window.location = '../produksi.php';
        </script>
        ";
    }
}
?>
