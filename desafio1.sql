DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;

  CREATE TABLE SpotifyClone.plans (
      plan_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      plan_name VARCHAR(50) NOT NULL,
      plan_value INT NOT NULL
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.users(
      user_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      user_name VARCHAR(100) NOT NULL,
      age INT,
      plan_id INT NOT NULL,
      signed_in_date DATE,
      FOREIGN KEY (plan_id) REFERENCES plans (plan_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.artists (
      artist_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      artist_name VARCHAR(100) NOT NULL
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.albums (
      album_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      album_name VARCHAR(100) NOT NULL,
      artist_id INT NOT NULL,
      release_year INT,
      FOREIGN KEY (artist_id) REFERENCES artists (artist_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.songs (
      song_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      song_name VARCHAR(100) NOT NULL,
      album_id INT NOT NULL,
      length_in_seconds INT,
      FOREIGN KEY (album_id) REFERENCES albums (album_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.history (
      user_id INT NOT NULL,
      song_id INT NOT NULL,
      date_played DATETIME,
      CONSTRAINT PRIMARY KEY (user_id, song_id),
      FOREIGN KEY (user_id) REFERENCES users (user_id),
      FOREIGN KEY (song_id) REFERENCES songs (songs_id),
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.followed_artists (
      user_id INT NOT NULL,
      artist_id INT NOT NULL,
      CONSTRAINT PRIMARY KEY (user_id, artist_id),
      FOREIGN KEY (user_id) REFERENCES users (user_id),
      FOREIGN KEY (artist_id) REFERENCES artists (artist_id),
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.tabela2(
      coluna1 tipo restricoes,
      coluna2 tipo restricoes,
      colunaN tipo restricoes,
  ) engine = InnoDB;

  INSERT INTO SpotifyClone.tabela1 (coluna1, coluna2)
  VALUES
    ('exemplo de dados 1', 'exemplo de dados A'),
    ('exemplo de dados 2', 'exemplo de dados B'),
    ('exemplo de dados 3', 'exemplo de dados C');

  INSERT INTO SpotifyClone.tabela2 (coluna1, coluna2)
  VALUES
    ('exemplo de dados 1', 'exemplo de dados X'),
    ('exemplo de dados 2', 'exemplo de dados Y');

-- VQV!