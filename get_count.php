<?php
include 'db.php';
$sub = $_GET['sub'];

$stmt = $conn->prepare("SELECT COUNT(*) as total FROM stock_items WHERE sub_table_code = ?");
$stmt->bind_param("s", $sub);
$stmt->execute();
$result = $stmt->get_result()->fetch_assoc();
echo $result['total'];
?>
