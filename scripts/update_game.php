<?php
include 'db_connect.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $id = intval($_POST['id']);
    $title = $_POST['title'];
    $genre = $_POST['genre'];
    $description = $_POST['description'];
    $price = $_POST['price'];
    $image_url = $_POST['image_url'];

    // Debugging output
    echo "ID: $id\n";
    echo "Title: $title\n";
    echo "Genre: $genre\n";
    echo "Description: $description\n"; // Check if description is valid
    echo "Price: $price\n";
    echo "Image URL: $image_url\n";

    $stmt = $conn->prepare("UPDATE games SET title = ?, genre = ?, description = ?, price = ?, image_url = ? WHERE id = ?");
    $stmt->bind_param("sssdsi", $title, $genre, $description, $price, $image_url, $id);
    
    if ($stmt->execute()) {
        echo "Game updated successfully!";
    } else {
        echo "Error: " . $stmt->error;
    }

    $stmt->close();
}

$conn->close();
