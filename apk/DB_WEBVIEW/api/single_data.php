<?php

    // Sesuaikan ke database masing - masing

    $db_host = 'localhost';
    $db_user = 'root';
    $db_pass = '';
    $db_name = 'template';
    $table = 'webview';

    // =====================================

    $conn = new mysqli($db_host, $db_user, $db_pass, $db_name);

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $sql = "SELECT * FROM $table LIMIT 1";

    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        $result = $result->fetch_assoc();
        echo json_encode($result, JSON_PRETTY_PRINT);
    } else {
        echo "0 results";
    }

    $conn->close();

?>