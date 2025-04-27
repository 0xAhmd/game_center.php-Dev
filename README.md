# 🎮 Game Center Store

Game Center Store is a dynamic web application where users can view, add, edit, and search for games.  
Built with **PHP**, **MySQL**, **JavaScript**, **HTML5**, **CSS3**, and **Bootstrap 5**.

---

## ✨ Features

- View all available games fetched dynamically from the server.
- Add new games using a floating action button.
- Edit game details (title, description, price, category, image) through a stylish modal form.
- Search for games by title in real time.
- Responsive and modern design using Bootstrap 5.

---

## 📂 Project Structure

```plaintext
root/
│
├── assets/           # Images and logos
│
├── css/
│   └── styles.css    # Custom styles
│
├── JS/
│   ├── scripts.js    # rendering cards, search functionality
│   └── edit_modal.js # Modal edit logic
│   └── fetch_games.js # fetching games logic
│   └── delete_games.js # delete_games logic
│
│
├── scripts/
│   └── db_connect.php # PHP script to make the database connection
│   └── get_games.php # PHP script to retrieve games from database
│   └── add_game.php # PHP script to add games to database
│   └── update_game.php # PHP script to edit games in database
│   └── delete_game.php # PHP script to delete games from database
│
├── add.html          # Page to add new games
├── index.html        # Main landing page
├── game_center.sql    # Database File
└── README.md         # Project documentation
```

---

## 🛠 Technologies Used

- **Frontend:** HTML5, CSS3, JavaScript (Vanilla), Bootstrap 5
- **Backend:** PHP
- **Database:** MySQL
- **Version Control:** Git

---

## 🚀 Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/0xAhmd/game_center.php.git
   ```

2. Set up your local server environment (XAMPP, WAMP, or similar).

3. Create a MySQL database and import the games table.

4. Configure your `db_connect.php` with your database credentials.

5. Run the project locally via your localhost server.

---

## 🎯 Future Updates (Possible)

- User authentication (login/register system).
- Game categories filtering.
- Image upload feature when adding/editing games.
- Improved security (form validation, input sanitization).

---

## 📸 Preview


![image](https://github.com/user-attachments/assets/0f36b8e6-cb46-45a2-9d37-b7b212953183)


