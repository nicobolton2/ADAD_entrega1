CREATE TABLE "cards"(
    "id_carta" SERIAL PRIMARY KEY,
    "nombre" varchar(255),
    "rarity" varchar(255),
    "elixir" INT,
    "enlace" varchar
);

CREATE TABLE "comment" (
  "id_comentario" SERIAL PRIMARY KEY,
  "id_user" INT,
  "id_carta" INT,
  "comentario" text
);

CREATE TABLE "usuarios" (
  "id_user" SERIAL PRIMARY KEY,
  "usuario" varchar(255),
  "clave" varchar(255)
);

ALTER TABLE comment ADD FOREIGN KEY ("id_carta") REFERENCES cards("id_carta");
ALTER TABLE comment ADD FOREIGN KEY ("id_user") REFERENCES usuarios("id_user");
 
INSERT INTO cards(nombre, rarity, elixir, enlace) VALUES ('archers','common',3,'https://raw.githubusercontent.com/smlbiobot/cr/master/card-gen/0.5/card-png/archers.png');
INSERT INTO cards(nombre, rarity, elixir, enlace) VALUES ('arrows','common',3,'https://raw.githubusercontent.com/smlbiobot/cr/master/card-gen/0.5/card-png/arrows.png');
INSERT INTO cards(nombre, rarity, elixir, enlace) VALUES ('baby-dragon','epic',4,'https://raw.githubusercontent.com/smlbiobot/cr/master/card-gen/0.5/card-png/baby-dragon.png');
INSERT INTO cards(nombre, rarity, elixir, enlace) VALUES ('balloon','epic',5,'https://raw.githubusercontent.com/smlbiobot/cr/master/card-gen/0.5/card-png/balloon.png');
INSERT INTO cards(nombre, rarity, elixir, enlace) VALUES ('bandit','legendary',3,'https://raw.githubusercontent.com/smlbiobot/cr/master/card-gen/0.5/card-png/bandit.png');
INSERT INTO cards(nombre, rarity, elixir, enlace) VALUES ('barbarian-hut','rare',7,'https://raw.githubusercontent.com/smlbiobot/cr/master/card-gen/0.5/card-png/barbarian-hut.png');
INSERT INTO cards(nombre, rarity, elixir, enlace) VALUES ('barbarians','common',5,'https://raw.githubusercontent.com/smlbiobot/cr/master/card-gen/0.5/card-png/barbarians.png');
INSERT INTO cards(nombre, rarity, elixir, enlace) VALUES ('bats','common',2,'https://raw.githubusercontent.com/smlbiobot/cr/master/card-gen/0.5/card-png/bats.png');
INSERT INTO cards(nombre, rarity, elixir, enlace) VALUES ('battle-ram','rare',4,'https://raw.githubusercontent.com/smlbiobot/cr/master/card-gen/0.5/card-png/battle-ram.png');
INSERT INTO cards(nombre, rarity, elixir, enlace) VALUES ('bomb-tower','rare',5,'https://raw.githubusercontent.com/smlbiobot/cr/master/card-gen/0.5/card-png/bomb-tower.png');
INSERT INTO cards(nombre, rarity, elixir, enlace) VALUES ('bomber','common',3,'https://raw.githubusercontent.com/smlbiobot/cr/master/card-gen/0.5/card-png/bomber.png');
INSERT INTO cards(nombre, rarity, elixir, enlace) VALUES ('bowler','epic',5,'https://raw.githubusercontent.com/smlbiobot/cr/master/card-gen/0.5/card-png/bowler.png');
INSERT INTO cards(nombre, rarity, elixir, enlace) VALUES ('cannon','common',3,'https://raw.githubusercontent.com/smlbiobot/cr/master/card-gen/0.5/card-png/cannon.png');
 
INSERT INTO usuarios(usuario, clave) VALUES ('Ronaldinho@false.com', '1234');
INSERT INTO usuarios(usuario, clave) VALUES ('alexi.sanchez@marsella.com', '1234');
INSERT INTO usuarios(usuario, clave) VALUES ('carlitos@gmail.com', '1234');
INSERT INTO usuarios(usuario, clave) VALUES ('mess@psg.com', '1234');

INSERT INTO comment(id_user, id_carta, comentario) VALUES (1,1,'ME GUSTA ESTAN COMO SE JUEGAN LAS ARQUERAS');
INSERT INTO comment(id_user, id_carta, comentario) VALUES (2,1,'QUE ES LO QUE ESTÁ DICIENDO EL COMENTARIO ANTERIOR, ES MUY MALA!!');
INSERT INTO comment(id_user, id_carta, comentario) VALUES (3,2,'QUITENLA DEL JUEGO ESTÁ ROTA DDDD:!');