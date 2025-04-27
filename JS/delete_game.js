// delete_game.js
function deleteGame() {
    if (currentEditingGameId && confirm("Are you sure you want to delete this game?")) {
      fetch('../scripts/delete_game.php?id=' + currentEditingGameId, {
        method: 'GET'
      })
      .then(response => response.text())
      .then(data => {
        console.log(data);
        location.reload();
      })
      .catch(error => {
        console.error('Error:', error);
      });
    }
  }
  