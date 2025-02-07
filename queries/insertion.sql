
-- Active: 1738662623843@@127.0.0.1@6603@projet2fou
INSERT INTO game_list (name_, size, boardgame_size, boardgame_display_size, boardgame_color, pawn_color, pawn_image, pawn_pattern)
VALUES ('Tictactoe', 3 , 3, 100, "green", "yellow", "image.png", "pattern.png"),
('GOMOKU', 15 , 15, 100, "green", "yellow", "image.png", "pattern.png"),
('Puissance 4', 7, 7, 100, "green", "yellow", "image.png", "pattern.png");

INSERT INTO User_ (firstname, lastname, username, email, password, birthday, created_at, has_token, is_active, is_online, img_avatar, last_connection)  
VALUES ('John', 'Doe', 'Jojo', 'john.doe@test.com', SHA2('mot_de_passe', 256), '1999-02-05', '2025-02-07 11:11:11', TRUE, TRUE, TRUE, 'image/homme-affaires.avif',
'2025-02-07 14:00:30');

