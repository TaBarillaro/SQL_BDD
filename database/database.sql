CREATE DATABASE IF NOT EXISTS projet2fou;

USE projet2fou;

    CREATE TABLE User_(
   Id_User_ int,
   lastname VARCHAR(100) NOT NULL,
   firstname VARCHAR(100) NOT NULL,
   username VARCHAR(150) NOT NULL,
   email VARCHAR(200) NOT NULL,
   password VARCHAR(254) NOT NULL,
   birthday DATE NOT NULL,
   created_at DATETIME NOT NULL,
   last_connection DATETIME NOT NULL,
   is_online BOOLEAN,
   img_avatar VARCHAR(255),
   has_token BOOLEAN,
   is_active BOOLEAN,
   PRIMARY KEY(Id_User_),
   UNIQUE(email)
);

CREATE TABLE game_list(
   Id_Game INT,
   name_ VARCHAR(150),
   size INT,
   boardgame_size INT,
   boardgame_display_size INT,
   boardgame_color VARCHAR(50),
   pawn_color VARCHAR(50),
   pawn_image VARCHAR(255),
   pawn_pattern VARCHAR(255),
   PRIMARY KEY(Id_Game)
);

CREATE TABLE customization_board(
   Id_customization_board INT,
   color VARCHAR(50),
   image VARCHAR(255),
   size INT,
   size_display INT,
   Id_Game INT NOT NULL,
   Id_User_ INT NOT NULL,
   PRIMARY KEY(Id_customization_board),
   FOREIGN KEY(Id_Game) REFERENCES game_list(Id_Game),
   FOREIGN KEY(Id_User_) REFERENCES User_(Id_User_)
);

CREATE TABLE customization_pawn(
   Id_customization_pawn INT,
   color VARCHAR(50),
   image VARCHAR(255),
   pattern VARCHAR(255),
   Id_Game INT NOT NULL,
   Id_User_ INT NOT NULL,
   PRIMARY KEY(Id_customization_pawn),
   FOREIGN KEY(Id_Game) REFERENCES game_list(Id_Game),
   FOREIGN KEY(Id_User_) REFERENCES User_(Id_User_)
);

CREATE TABLE parent_detail(
   Id_parent_detail INT,
   firstname VARCHAR(150),
   lastname VARCHAR(150),
   email VARCHAR(255),
   parental_control BOOLEAN,
   PRIMARY KEY(Id_parent_detail)
);

CREATE TABLE pack_token(
   Id_token INT,
   pack_name VARCHAR(150) NOT NULL,
   validity_start_date DATE,
   validity_end_date DATE,
   price DECIMAL(5,2),
   quantity INT,
   PRIMARY KEY(Id_token)
);

CREATE TABLE BoardGame(
   Id_BoardGame INT,
   date_game DATETIME,
   Id_Game INT NOT NULL,
   Id_User_ INT NOT NULL,
   PRIMARY KEY(Id_BoardGame),
   FOREIGN KEY(Id_Game) REFERENCES game_list(Id_Game),
   FOREIGN KEY(Id_User_) REFERENCES User_(Id_User_)
);

CREATE TABLE order_(
   id VARCHAR(50),
   date_ DATETIME,
   order_number VARCHAR(100),
   Id_token INT NOT NULL,
   Id_User_ INT NOT NULL,
   PRIMARY KEY(id),
   FOREIGN KEY(Id_token) REFERENCES pack_token(Id_token),
   FOREIGN KEY(Id_User_) REFERENCES User_(Id_User_)
);

