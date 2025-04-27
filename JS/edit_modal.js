let selectedGame = {};

function openEditModal(title, id) {
  currentEditingGameId = id; // Save the ID globally

  const gameCards = document.querySelectorAll('#game-cards-container .game-card');
  gameCards.forEach(card => {
    const cardTitle = card.querySelector('.card-title').textContent;
    if (cardTitle === title) {
      selectedGame = {
        title,
        genre: card.querySelector('.genre-tag')?.textContent || '',
        description: card.querySelector('.card-text')?.textContent || '', // Debug here
        price: card.querySelector('.price-badge')?.textContent.replace('$', '') || '',
        image_url: card.querySelector('img')?.src || ''
      };

      console.log("Selected game description:", selectedGame.description); // Debugging
    }
  });

  document.getElementById('editGameTitle').value = selectedGame.title;
  document.getElementById('editGameGenre').value = selectedGame.genre;
  document.getElementById('editGameDescription').value = selectedGame.description;
  document.getElementById('editGamePrice').value = selectedGame.price;
  document.getElementById('editGameImageUrl').value = selectedGame.image_url;

  const editModal = new bootstrap.Modal(document.getElementById('editGameModal'));
  editModal.show();
}

function saveEdit() {
  const updatedGame = {
    title: document.getElementById('editGameTitle').value,
    genre: document.getElementById('editGameGenre').value,
    description: document.getElementById('editGameDescription').value.trim(), // Ensure valid description
    price: parseFloat(document.getElementById('editGamePrice').value) || 0, // Ensure valid price
    image_url: document.getElementById('editGameImageUrl').value,
    id: currentEditingGameId // Ensure the ID is included
  };

  console.log("Sending updated game data:", updatedGame); // Debugging

  fetch('../scripts/update_game.php', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/x-www-form-urlencoded'
    },
    body: new URLSearchParams(updatedGame).toString()
  })
    .then(response => response.text())
    .then(data => {
      console.log("Server response:", data); // Debugging
      fetchGames(); // Refresh the game list
    })
    .catch(error => {
      console.error('Error updating game:', error);
    });

  const editModal = bootstrap.Modal.getInstance(document.getElementById('editGameModal'));
  editModal.hide();
}