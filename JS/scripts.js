// scripts.js
// Search functionality
function searchGames() {
  const searchInput = document.querySelector('.search-bar input').value.toLowerCase();
  const gameCards = document.querySelectorAll('#game-cards-container .game-card');

  gameCards.forEach(card => {
    const title = card.querySelector('.card-title').textContent.toLowerCase();
    if (title.includes(searchInput)) {
      card.style.display = 'block';
    } else {
      card.style.display = 'none';
    }
  });
}

// Add event listener for search
document.querySelector('.search-bar input').addEventListener('input', searchGames);

// Edit Modal functionality
let selectedGame = {};
let currentEditingGameId = null;

function openEditModal(title, id) {
  currentEditingGameId = id;

  const gameCards = document.querySelectorAll('#game-cards-container .game-card');
  gameCards.forEach(card => {
    const cardTitle = card.querySelector('.card-title').textContent;
    if (cardTitle === title) {
      selectedGame = {
        title,
        genre: card.querySelector('.genre-tag')?.textContent || '',
        description: card.querySelector('.card-text')?.textContent || '',
        price: card.querySelector('.price-badge')?.textContent.replace('$', '') || '',
        image_url: card.querySelector('img')?.src || ''
      };
      console.log("Selected game description:", selectedGame.description);
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
    description: document.getElementById('editGameDescription').value.trim(),
    price: parseFloat(document.getElementById('editGamePrice').value) || 0,
    image_url: document.getElementById('editGameImageUrl').value,
    id: currentEditingGameId
  };

  console.log("Sending updated game data:", updatedGame);

  fetch('../scripts/update_game.php', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/x-www-form-urlencoded'
    },
    body: new URLSearchParams(updatedGame).toString()
  })
    .then(response => response.text())
    .then(data => {
      console.log("Server response:", data);
      fetchGames(); // Call fetchGames from fetch_games.js
    })
    .catch(error => {
      console.error('Error updating game:', error);
    });

  const editModal = bootstrap.Modal.getInstance(document.getElementById('editGameModal'));
  editModal.hide();
}
