<?php
include 'db.php';
$sub = $_GET['sub'];
$item_name = "Barang " . rand(100,999); // Nama acak untuk demo

// Cek jumlah
$result = $conn->query("SELECT COUNT(*) as total FROM stock_items WHERE sub_table_code = '$sub'");
$total = $result->fetch_assoc()['total'];

if ($total >= 15) {
    echo "Maksimal 15 data!";
    exit;
}

$conn->query("INSERT INTO stock_items (sub_table_code, item_name) VALUES ('$sub', '$item_name')");

// Kirim ke Google Spreadsheet (via webhook)
$data = [
    'sub_table' => $sub,
    'item' => $item_name,
    'action' => 'add',
    'datetime' => date('Y-m-d H:i:s')
];

$ch = curl_init("https://script.google.com/macros/s/YOUR_WEBHOOK_ID/exec");
curl_setopt($ch, CURLOPT_TIMEOUT_MS, 100); // Maks 100ms
curl_setopt($ch, CURLOPT_NOSIGNAL, 1);     // Untuk menghindari error timeout
curl_exec($ch); // Jalankan tapi tidak menunggu
curl_close($ch);


echo "Item ditambahkan.";
?>
