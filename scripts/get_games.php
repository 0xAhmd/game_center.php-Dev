<?php
require 'db_connect.php';
header('Content-Type: application/json; charset=utf-8');

// SQL query to select all the data from the games table
$sql = "SELECT * FROM games";
$result = mysqli_query($conn, $sql);

$games = []; // Initialize an empty array to store games

if ($result) {
    while ($row = mysqli_fetch_assoc($result)) {
        $games[] = $row; // Add the data to the array
    }
    echo json_encode($games); // Encode the data as JSON and send it back to the client
} else {
    echo json_encode(["error" => "Query failed: " . mysqli_error($conn)]);
}
?>