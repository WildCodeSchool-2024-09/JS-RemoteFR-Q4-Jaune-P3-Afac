-- SQLBook: Code
CREATE TABLE user (
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  username VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  hashed_password VARCHAR(255) NOT NULL,
  picture VARCHAR(255) DEFAULT "default_pfp.jpg",
  bio TEXT DEFAULT NULL,
  portfolio VARCHAR(255) DEFAULT NULL,
  website VARCHAR(255) DEFAULT NULL,
  is_admin BOOLEAN DEFAULT FALSE
);

-- le mdp est mdpAFAC@91
INSERT INTO user(username, email, hashed_password, picture, bio, portfolio, website, is_admin) VALUES
("Admin", "test@test.fr", "$argon2id$v=19$m=19456,t=2,p=1$Yme1gkTMwKkLvuW6KJwRLg$qUpg5FadAxfwrS1pTA8wHiEEq/7TvRBY/Yi8y4BT2J0", "025.png", "Développeur passionné par le web et les nouvelles technologies.", "https://www.linkedin.com/in/clm-andreani", "https://itclmt-portfolio.vercel.app", TRUE),
("Ezio", "ezio@test.fr", "$argon2id$v=19$m=19456,t=2,p=1$Yme1gkTMwKkLvuW6KJwRLg$qUpg5FadAxfwrS1pTA8wHiEEq/7TvRBY/Yi8y4BT2J0", "chapeaunoir.jpg", "Je suis un artiste qui aime aussi bien les peintures que la danse sous toutes ses formes", "https://johndoe.dev", "https://instagram.com/johndoe", FALSE),
("Judith", "judith@test.fr", "$argon2id$v=19$m=19456,t=2,p=1$Yme1gkTMwKkLvuW6KJwRLg$qUpg5FadAxfwrS1pTA8wHiEEq/7TvRBY/Yi8y4BT2J0", "femme2.jpg", "Artiste amateur, je suis passionnée de street d'art ", "https://johndoe.dev", "https://instagram.com/johndoe", FALSE),
("Pierre", "pierre@test.fr", "$argon2id$v=19$m=19456,t=2,p=1$Yme1gkTMwKkLvuW6KJwRLg$qUpg5FadAxfwrS1pTA8wHiEEq/7TvRBY/Yi8y4BT2J0", "homme2.jpg", "Je suis un grand passionné de danse ", "https://johndoe.dev", "https://instagram.com/johndoe", FALSE),
("Clément PICASSO", "clement@test.fr", "$argon2id$v=19$m=19456,t=2,p=1$Yme1gkTMwKkLvuW6KJwRLg$qUpg5FadAxfwrS1pTA8wHiEEq/7TvRBY/Yi8y4BT2J0", "clement.png", "I am a digital artist and photographer capturing the beauty of Earth's diverse landscapes. Through photography and digital art, I blend reality and imagination to create immersive scenes that highlight nature's depth, light, and atmosphere, inviting viewers to explore the world through a new lens.", "www.clementpicasso.art", "https://instagram.com/clementpicasso", FALSE),
("David", "david@test.fr", "$argon2id$v=19$m=19456,t=2,p=1$Yme1gkTMwKkLvuW6KJwRLg$qUpg5FadAxfwrS1pTA8wHiEEq/7TvRBY/Yi8y4BT2J0", "homme4.jpg", "J'adore les battles de danse avec ma crew", "https://johndoe.dev", "https://instagram.com/johndoe", FALSE),
("Alice", "alice@test.fr", "$argon2id$v=19$m=19456,t=2,p=1$Yme1gkTMwKkLvuW6KJwRLg$qUpg5FadAxfwrS1pTA8wHiEEq/7TvRBY/Yi8y4BT2J0", "femme1.jpg", "Bonjour, je suis une fan de sculpture depuis toute petite", "https://johndoe.dev", "https://instagram.com/johndoe", FALSE),
("Bob", "bob@test.fr", "$argon2id$v=19$m=19456,t=2,p=1$Yme1gkTMwKkLvuW6KJwRLg$qUpg5FadAxfwrS1pTA8wHiEEq/7TvRBY/Yi8y4BT2J0", "homme5.jpg", "Amoureux d'arts", "https://johndoe.dev", "https://instagram.com/johndoe", FALSE),
("Charlie", "charlie@test.fr", "$argon2id$v=19$m=19456,t=2,p=1$Yme1gkTMwKkLvuW6KJwRLg$qUpg5FadAxfwrS1pTA8wHiEEq/7TvRBY/Yi8y4BT2J0", "femme4.jpg", "J'adore l'art", "https://johndoe.dev", "https://instagram.com/johndoe", FALSE),
("Emma", "emma@test.fr", "$argon2id$v=19$m=19456,t=2,p=1$Yme1gkTMwKkLvuW6KJwRLg$qUpg5FadAxfwrS1pTA8wHiEEq/7TvRBY/Yi8y4BT2J0", "femme3.jpg", "Grande amateur d'art", "https://johndoe.dev", "https://instagram.com/johndoe", FALSE),
("Sophie", "sophie@test.fr", "$argon2id$v=19$m=19456,t=2,p=1$Yme1gkTMwKkLvuW6KJwRLg$qUpg5FadAxfwrS1pTA8wHiEEq/7TvRBY/Yi8y4BT2J0", "sophie.jpg", "Je suis ici pour apprendre des artistes", "https://johndoe.dev", "https://instagram.com/johndoe", FALSE),
("Antoine", "antoine@test.fr", "$argon2id$v=19$m=19456,t=2,p=1$Yme1gkTMwKkLvuW6KJwRLg$qUpg5FadAxfwrS1pTA8wHiEEq/7TvRBY/Yi8y4BT2J0", "antoine.jpg", "Artiste digital créant des œuvres abstraites et modernes", "https://johndoe.dev", "https://instagram.com/johndoe", FALSE),
("Marie", "marie@test.fr", "$argon2id$v=19$m=19456,t=2,p=1$Yme1gkTMwKkLvuW6KJwRLg$qUpg5FadAxfwrS1pTA8wHiEEq/7TvRBY/Yi8y4BT2J0", "marie.jpg", "Illustratrice et peintre explorant le mélange des styles artistiques.", "https://johndoe.dev", "https://instagram.com/johndoe", FALSE),
("Lucas", "lucas@test.fr", "$argon2id$v=19$m=19456,t=2,p=1$Yme1gkTMwKkLvuW6KJwRLg$qUpg5FadAxfwrS1pTA8wHiEEq/7TvRBY/Yi8y4BT2J0", "lucas.jpg", "Passionné de photographie de rue et de portraits urbains.", "https://johndoe.dev", "https://instagram.com/johndoe", FALSE),
("Lisa", "lisa@test.fr", "$argon2id$v=19$m=19456,t=2,p=1$Yme1gkTMwKkLvuW6KJwRLg$qUpg5FadAxfwrS1pTA8wHiEEq/7TvRBY/Yi8y4BT2J0", "lisa.jpg", "Ici c'est Marseille bébé !", "https://johndoe.dev", "https://instagram.com/johndoe", FALSE);

CREATE TABLE category (
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  name VARCHAR(255) NOT NULL
);

INSERT INTO category (name) VALUES
  ('Peintures'),
  ('Musiques'),
  ('Photos'),
  ('Danse'),
  ('Street Art'),
  ('Sculpture'),
  ('Autres');

CREATE TABLE artwork (
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  title VARCHAR(50) NOT NULL,
  description VARCHAR(255) DEFAULT NULL,
  picture text NOT NULL,
  category_id INT NOT NULL,
  user_id INT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY(user_id) REFERENCES user(id),
  FOREIGN KEY(category_id) REFERENCES category(id)
);

INSERT INTO artwork(title, description, picture, category_id, user_id, created_at) VALUES
("Beauty at home", "Un jeune cadre dynamique", "dark-photo-frame-plant-arrangement.avif", 3, 3, '2023-01-15 10:30:00'),
("La Brume", "Foret de Liege", "high-angle-shot-beautiful-forest-with-lot-green-trees-enveloped-fog-new-zealand.avif", 3, 8, '2023-02-20 14:45:00'),
("Le Mont AFAC", "Il faut trouver un meilleur nom", "beautiful-aerial-shot-fronalpstock-mountains-switzerland-beautiful-pink-blue-sky.avif", 3, 6, '2023-03-10 09:15:00'),
("Cyprien ?", "On dirait Cyprien", "fake-cyprien.avif", 3, 2, '2023-04-05 16:20:00'),
("La tablette a données", "C'est juste des données", "representation-user-experience-interface-design.avif", 3, 9, '2023-05-12 11:30:00'),
("Le voyage Jaune", "C'est tres jaune", "beautiful-collage-travel-concept_23-2149232169.avif", 3, 5, '2023-06-25 13:40:00'),
("ON M'ENTENDS ?", "Love Love ALLO", "social-media-concept-composition_23-2150169142.avif", 3, 3, '2023-07-18 15:55:00'),
("La plage", "Il fait chaud !", "beach-composition-with-blank-space-text_24837-240.avif", 3, 9, '2023-08-30 10:25:00'),
("Jolie madame", "Photo de jolie madame", "portrait-personne-assistant-soiree-musique-techno-dynamique_23-2150551577.avif", 3, 6, '2023-09-14 12:35:00'),
("Les couleurs nutritifs", "Miam Miam", "buddha-bowl-dish-with-vegetables-legumes-top-view_1150-42589.avif", 3, 2, '2023-10-22 14:15:00'),
("Masque de Carnaval", "Un magnifique masque de carnaval sur fond jaune", "masque-elegant-perles-carnaval-mystere-plat_23-2148756051.avif", 3, 2, '2023-11-05 09:45:00'),
("Server", "Data center", "salle-hub-racks-serveurs-donnees-centre-informatique-big-data-interieur-bleu-pour-hebergement-materiel-stockage_90220-1033.avif", 3, 3, '2023-11-28 16:50:00'),
("Foret", "Jolie foret", "arbres-qui-poussent-dans-foret_1048944-30368869.avif", 3, 4, '2023-12-10 11:20:00'),
("Ecureuil", "Un petit ecureuil qui prend la pose", "close-up-ecureuil-poteau-bois_1048944-30370286.avif", 3, 5, '2023-12-24 13:30:00'),
("Ville la nuit", "Vue aérienne d'une ville illuminée la nuit", "vue-aerienne-ville-illuminations-nuit_181624-13831.avif", 3, 3, '2024-01-08 15:40:00'),
("Paysage montagneux", "Paysage montagneux avec un lac au premier plan", "vue-montagnes-lac-contre-ciel-bleu_181624-20597.avif", 3, 4, '2024-01-20 10:15:00'),
("Forêt en automne", "Forêt avec feuillage automnal", "foret-avec-arbres-automne_181624-14110.avif", 3, 5, '2024-02-01 12:25:00'),
("Un jaguar", "Un magnifique jaguar", "jaguar.avif", 5, 4, '2025-03-25 15:50:00'),
("Une tortue", "Une tortue nage", "Tortue.avif", 5, 3, '2025-03-25 14:00:00'),
("Un magnifique trio", "Trois prédateurs", "Trio.avif", 5, 2, '2025-03-22 16:00:00'),
("Un perroquet", "Un perroquet sort du mur", "Perroquet.avif", 5, 8, '2025-03-20 11:30:00'),
("L'oeil", "Un magnifique oeil", "Oeil.avif", 5, 9, '2025-03-10 10:00:00'),
("Marianne", "Un portrait représentant Marianne", "Marianne.avif", 5, 10, '2025-03-05 14:00:00'),
("Mélange d'animaux", "Un très beau mélange", "animaux.avif", 5, 7, '2025-03-02 17:00:00'),
("Une jeune femme", "Une magnifique jeune femme", "Jeunefemme.avif", 5, 2, '2025-03-24 12:00:00'),
("Une petite fille", "Une bonne sieste", "Petitefille.avif", 5, 9, '2025-03-25 13:50:00'),
("Jules César", "Statue de Jules César", "Cesar.avif", 6, 3, '2025-03-25 16:00:00'),
("Cléopâtre", "La reine Cléopâtre", "Cleopatre.avif", 6, 2, '2025-03-19 13:00:00'),
("Un ours", "Un ours en bois", "Ours.avif", 6, 4, '2025-03-16 11:00:00'),
("Zeus", "Le dieu Zeus", "Zeus.avif", 6, 3, '2025-03-21 14:00:00'),
("Le penseur", "Je pense...un instant", "Penseur.avif", 6, 3, '2025-03-25 08:40:00'),
("Athéna", "La déesse Athéna", "Athena.avif", 6, 5, '2025-03-12 14:00:00'),
("Un duo", "Un homme et une femme", "duosaute.avif", 4, 3, '2025-03-21 19:50:00'),
("Un groupe", "Une chorégraphie", "Groupe.avif", 4, 7, '2025-03-16 20:20:00'),
("Une danseuse", "Une danseuse avec son voile rouge", "danseuserouge.avif", 4, 8, '2025-03-15 07:30:00'),
("Rock", "Une affiche de rock", "Rock.avif", 4, 6, '2025-03-24 19:00:00'),
("Salsa", "Une affiche de salsa", "salsa.avif", 4, 9, '2025-03-23 12:30:00'),
("Tango", "Un tango argentin", "Tango.avif", 4, 10, '2025-03-22 15:00:00'),
("Une guitare", "Une très belle guitare avec des ailes", "aileguitare.avif", 2, 11, '2025-03-07 13:00:00'),
("Une route", "Une route en forme de piano", "Routepiano.avif", 2, 12, '2025-03-05 21:30:00'),
("Un piano", "Un piano coloré", "piano.avif", 2, 13, '2025-03-03 10:30:00'),
("Un tambour", "Un vieil homme qui fait du tambour", "Tambour.avif", 2, 9, '2025-03-25 11:20:30'),
("Un violon", "Une jeune fille fait du violon", "violon.avif", 2, 6, '2025-03-20 12:00:00'),
("Un casque", "Un jeune homme avec son casque", "casque.avif", 2, 4, '2025-03-25 14:00:00'),
("Balade", "Une balade le long du quai", "Baladequai.avif", 1, 5, '2025-03-25 14:35:00'),
("Une femme", "Un portrait avec pleins de couleurs", "Femme.avif", 1, 10, '2025-03-25 10:00:00'),
("Lunette", "Une belle paire de lunette", "lunette.avif", 1, 12, '2025-03-25 12:20:00'),
("Un singe", "Le singe prend la pose", "portraitsinge.avif", 1, 8, '2025-03-25 19:10:00'),
("Un tableau", "Un beau tableau", "singe.avif", 1, 6, '2025-03-25 22:22:00'),
("Un champ", "Je fais du vélo dans le champ", "champ.avif", 1, 5, '2025-03-25 23:30:00'),
("Battle", "Une battle de hip hop", "hip1.avif", 4, 10, '2025-03-22 14:44:00'),
("Groupe", "Une battle de groupe", "hip2.avif", 4, 11, '2025-01-10 15:00:00'),
("Figure", "Un danseur de hip hop", "hip3.avif", 4, 12, '2025-02-22 19:00:00'),
("Tahitienne", "Danse d'une polynésienne", "tahiti.avif", 4, 4, '2025-03-20 10:30:00'),
("Un homme", "Une oeuvre musicale", "homme.avif", 2, 10, '2025-03-10 20:40:30'),
("Une table de mixage", "Un homme fait du mix", "mix.avif", 2, 2, '2025-01-18 16:00:00'),
("Une ville", "Un beau tableau avec des buildings", "ville.avif", 1, 3, '2025-03-24 22:45:00'),
("Un Koala", "Une jolie peinture d'un koala", "koala.avif", 1, 12, '2025-03-25 22:22:00'),
("Un lion", "Une sculpture d'un lion", "lion.avif", 6, 7, '2025-02-20 16:00:00'),
("Un chat", "Sculpture d'un chat", "chat.avif", 6, 9, '2025-03-13 10:50:25'),
("Rock'n Roll", "Une enceinte et une guitare", "enceinterock.avif", 2, 8, '2025-03-23 21:00:00');

CREATE TABLE event (
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  title VARCHAR(255) NOT NULL,
  description TEXT,
  picture text DEFAULT NULL,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  location VARCHAR(255),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE event_artwork (
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  event_id INT NOT NULL,
  artwork_id INT NOT NULL,
  FOREIGN KEY (event_id) REFERENCES event(id) ON DELETE CASCADE,
  FOREIGN KEY (artwork_id) REFERENCES artwork(id) ON DELETE CASCADE
);

INSERT INTO event(title, description, picture, start_date, end_date, location) VALUES
("Exposition d'art 1", "Exposition d'art moderne", "https://images.pexels.com/photos/1585325/pexels-photo-1585325.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", "2025-03-15", "2025-03-20", "Paris"),
("Exposition d'art 2", "Exposition d'art ancien","https://images.pexels.com/photos/631339/pexels-photo-631339.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", "2025-04-01", "2025-04-05", "En Ligne"),
("Exposition d'art 3", "Exposition d'art contemporain","https://images.pexels.com/photos/2215609/pexels-photo-2215609.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", "2025-04-15", "2025-04-20", "Reims"),
("Exposition d'art 4", "Exposition d'art street art","https://images.pexels.com/photos/1194420/pexels-photo-1194420.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", "2025-05-01", "2025-05-05", "Marseille"),
("Exposition d'art 5", "Exposition d'art web","https://images.pexels.com/photos/3094799/pexels-photo-3094799.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", "2025-05-15", "2025-05-20", "En Ligne"),
("Exposition SUPP3", "Exposition d'art abstrait", "https://images.pexels.com/photos/1193743/pexels-photo-1193743.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", "2025-03-11", "2025-03-23", "Lille"),
("Exposition SUPP2", "Exposition d'art abstrait", "https://images.pexels.com/photos/1193743/pexels-photo-1193743.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", "2025-03-11", "2025-03-22", "Lille"),
("Exposition SUPP1", "Exposition d'art abstrait", "https://images.pexels.com/photos/1193743/pexels-photo-1193743.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", "2025-03-11", "2025-03-21", "Lille"),
("Exposition SUPP4", "Exposition d'art abstrait", "https://images.pexels.com/photos/1193743/pexels-photo-1193743.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", "2025-03-11", "2025-03-20", "Lille"),
("Exposition d'art 6", "Exposition d'art abstrait", "https://images.pexels.com/photos/1193743/pexels-photo-1193743.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", "2025-03-11", "2025-03-19", "Lille");

INSERT INTO event_artwork(event_id, artwork_id) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8),
(5, 9),
(5, 10),
(6, 11);

CREATE TABLE likes (
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  user_id INT NOT NULL,
  artwork_id INT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES user(id) ON DELETE CASCADE,
  FOREIGN KEY (artwork_id) REFERENCES artwork(id) ON DELETE CASCADE
);

INSERT INTO likes(user_id, artwork_id) VALUES
(1, 1),
(2, 1),
(3, 1),
(1, 2),
(2, 2),
(3, 4),
(4, 4),
(5, 5),
(6, 8),
(7, 12),
(8, 12),
(9, 12),
(10, 12),
(7, 8),
(1, 18),
(2, 18),
(3, 18),
(4, 18),
(5, 18),
(6, 18),
(7, 18),
(8, 18),
(8, 39),
(9, 39),
(10, 39),
(11, 39),
(12, 39),
(7, 39);

CREATE TABLE follows (
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  follower_id INT NOT NULL,
  following_id INT NOT NULL,
  UNIQUE KEY unique_follow (follower_id, following_id),
  FOREIGN KEY (follower_id) REFERENCES user(id) ON DELETE CASCADE,
  FOREIGN KEY (following_id) REFERENCES user(id) ON DELETE CASCADE
);
CREATE TABLE comment (
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  user_id INT NOT NULL,
  artwork_id INT NOT NULL,
  comment_text VARCHAR(255) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES user(id) ON DELETE CASCADE,
  FOREIGN KEY (artwork_id) REFERENCES artwork(id) ON DELETE CASCADE
);

INSERT INTO comment(user_id, artwork_id, comment_text) VALUES
(1, 1, "Superbe oeuvre !"),
(2, 1, "Merci pour votre commentaire !"),
(3, 1, "Je suis très content de cette oeuvre !"),
(4, 1, "Merci pour votre commentaire !"),
(5, 1, "Je suis très content de cette oeuvre !");


