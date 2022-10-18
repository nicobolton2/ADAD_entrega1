 #ARQUITECTURAS DE ALTA DISPONIBILIDAD - Tarea 1 / Docker

![image](https://user-images.githubusercontent.com/65205530/196405081-1134a5da-223d-406f-80d2-4e220eb9ccf1.png)

En esta entrega se tiene como fin, poder desarrollar una integracion de los 3 frentes dentro de una aplicación como lo es: 
1. backend.
2. Frontend.
3. Base de datos.

Integrando las funciones principales 4 llamadas de una API REST (POST,GET,PUT, DELETE) y/o Graphql.
En esta ocasión, se enfocó en Clash Royale y cartas que se encuentran dentro de su juego.


Para iniciar, se debe clonar el repocitorio

```
git clone 

```

Luego, se debe realizar la ejecucion de las tecnologias desarrolladas

```
docker-compose up --build 

```
## Rutas
Una vez levantado, se debe habrir el navegador y tener presente las siguientes rutas:

### 1. POST - Login
```
http://localhost:3000/login
```
Donde entregamos:
```
User: Ronaldinho@false.com
Password: 1234
```

Se obtiene:

```
{
  "id" : 1,
  "User" : "Ronaldinho@false.com",
  "Password" : 1234
}
```
### 2. GET - Ver cartas

```
http://localhost:3000/home
```
Donde en este caso, no se le entregan parametros, si no que mas bien muestra los elementos

Se obtiene:

```
[
  {
    "id_carta" : 1,
    "nombre" : "archers",
    "rarity" : "common",
    "elixir" : 3,
    "enlace": "https://raw.githubusercontent.com/smlbiobot/cr/master/card-gen/0.5/card-png/archers.png"
  },
  {
    "id_carta" : 2,
    "nombre" : "arrows",
    "rarity" : "common",
    "elixir" : 3,
    "enlace": "https://raw.githubusercontent.com/smlbiobot/cr/master/card-gen/0.5/card-png/arrows.png"
  }, 
  ...
  ]
```



### 3. PUT - Editar

```
http://localhost:3000/writecommit
```
Donde entregamos:

```
id_comentario: 1
commit: "Actualizacion de texto"
```

Se obtiene:

```
{
  "id_carta":1,
  "id_comentario" : 1,
  "commit" : "Actualizacion de texto"
}
```

### 4. DELETE - Eliminar comentario

```
http://localhost:3000/borrar
```
Donde entregamos:

```
id_comentario: 1
```

Se obtiene:

```
{
  "Eliminacion existosa"
}
