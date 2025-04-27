// fetch_games.js
function fetchGames() {
    fetch('../scripts/get_games.php')
        .then(response => response.json())
        .then(data => {
            console.log(data); // Debugging
            if (Array.isArray(data) && data.length > 0) {
                const container = document.getElementById('game-cards-container');
                container.innerHTML = '';

                const reversedData = data.reverse();

                reversedData.forEach(game => {
                    const card = `
  <div class="col-md-4 game-card">
    <div class="card card-glass" onclick="openEditModal(&quot;${game.title}&quot;, ${game.id})">
      <img src="${game.image_url}" class="card-img-top game-img" alt="${game.name}">
      <div class="card-body">
        <h5 class="card-title text-white">${game.title}</h5>
        <span class="genre-tag">${game.genre}</span>
        <p class="card-text mt-2 text-white">${game.description}</p>
        <div class="d-flex justify-content-between align-items-center mt-3">
          <span class="price-badge">$${game.price}</span>
        </div>
      </div>
    </div>
  </div>
`;


                    container.innerHTML += card;

                });
            } else {
                console.error('No games data found or unexpected format.');
            }
        })
        .catch(error => {
            console.error('Error fetching games:', error);
        });
}

// Fetch games when the page loads
document.addEventListener('DOMContentLoaded', fetchGames);
