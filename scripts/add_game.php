<?php
include 'db_connect.php';

// Check if the method is POST
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Retrieve data from the form
    $title = $_POST['title'];
    $description = $_POST['description'];
    $price = $_POST['price'];
    $genre = $_POST['genre'];
    $img = $_POST['image_url'];

    // Use a prepared statement to insert the data into the database
    $stmt = $conn->prepare("INSERT INTO games (title, description, price, genre, image_url) VALUES (?, ?, ?, ?, ?)");
    $stmt->bind_param("ssdss", $title, $description, $price, $genre, $img);

    // Execute the statement and check if it was successful
    if ($stmt->execute()) {
        // Redirect back to the main page
        header("Location: ../HTML/index.html");
        exit();
    } else {
        echo "Error: " . $stmt->error;
    }

    $stmt->close();
}

$conn->close();
?>