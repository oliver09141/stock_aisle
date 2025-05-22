<?php
include 'db.php';
$sub = $_GET['sub'];

// Hapus data terakhir
$result = $conn->query("SELECT id, item_name FROM stock_items WHERE sub_table_code = '$sub' ORDER BY id DESC LIMIT 1");
if ($row = $result->fetch_assoc()) {
    $item_name = $row['item_name'];
    $conn->query("DELETE FROM stock_items WHERE id = " . $row['id']);

    // Kirim ke Spreadsheet (hapus)
    $data = [
        'sub_table' => $sub,
        'item' => $item_name,
        'action' => 'remove',
        'datetime' => date('Y-m-d H:i:s')
    ];

    $ch = curl_init("https://script.google.com/macros/s/YOUR_WEBHOOK_ID/exec");
    curl_setopt($ch, CURLOPT_TIMEOUT_MS, 100); // Maks 100ms
    curl_setopt($ch, CURLOPT_NOSIGNAL, 1);     // Untuk menghindari error timeout
    curl_exec($ch); // Jalankan tapi tidak menunggu
    curl_close($ch);
    

    echo "Item dikurangi.";
} else {
    echo "Tidak ada data.";
}
?>
