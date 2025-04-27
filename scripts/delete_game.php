<?php
include 'db_connect.php';

if (isset($_GET['id'])) {
    $id = intval($_GET['id']);
    $query = "DELETE FROM games WHERE id = $id";

    if ($conn->query($query) === true) {
        echo "Deleted Successfully";
    } else {
        echo "Error: " . $conn->error; // Debugging
    }
} else {
    echo "No ID provided.";
}
?>