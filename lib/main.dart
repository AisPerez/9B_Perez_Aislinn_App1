import 'package:flutter/material.dart';

void main() {
  runApp(FacebookApp());
}

class FacebookApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FacebookHomePage(),
    );
  }
}

class FacebookHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Facebook'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Acción para la búsqueda
            },
          ),
          IconButton(
            icon: Icon(Icons.message),
            onPressed: () {
              // Acción para los mensajes
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Aquí irían las tarjetas de publicaciones
            FacebookPostCard(
              username: 'Osvaldo Maye',
              time: 'Hace 2 horas',
              content: '¡MEMES!',
              imageUrl: 'https://ethic.es/wp-content/uploads/2023/01/memes-antes-1280x768.jpg',
              userImageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7eJvJEFuCnvIYK_AcKkAtpFFkI6uws1SM-A&s',
            ),
            FacebookPostCard(
              username: 'Aislinn Perez',
              time: 'Hace 20 minutos',
              content: 'Flutter es increíble!',
              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQV6Ey7GmpRQiipHB8Nk1xyt6QxAW58Q5arWA&s',
              userImageUrl: 'https://static.vecteezy.com/system/resources/previews/002/275/818/non_2x/female-avatar-woman-profile-icon-for-network-vector.jpg',
            ),
            // Puedes agregar más tarjetas de publicaciones aquí
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                // Acción para ir a la página de inicio
              },
            ),
            IconButton(
              icon: Icon(Icons.people),
              onPressed: () {
                // Acción para ir a la lista de amigos
              },
            ),
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {
                // Acción para ir a las notificaciones
              },
            ),
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                // Acción para abrir el menú
              },
            ),
          ],
        ),
      ),
    );
  }
}

class FacebookPostCard extends StatelessWidget {
  final String username;
  final String time;
  final String content;
  final String imageUrl;
  final String userImageUrl;

  const FacebookPostCard({
    Key? key,
    required this.username,
    required this.time,
    required this.content,
    required this.imageUrl,
    required this.userImageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Encabezado de la publicación (avatar, nombre de usuario, hora)
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(userImageUrl),
            ),
            title: Text(username),
            subtitle: Text(time),
            trailing: IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed: () {
                // Acciones adicionales para la publicación
              },
            ),
          ),
          // Contenido de la publicación (texto, imagen, etc.)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              content,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          // Imagen de la publicación
          imageUrl != ''
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(imageUrl),
                )
              : Container(),
          // Barra de acciones (like, comentario, compartir)
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(Icons.thumb_up),
                onPressed: () {
                  // Acción para dar like
                },
              ),
              IconButton(
                icon: Icon(Icons.comment),
                onPressed: () {
                  // Acción para comentar
                },
              ),
              IconButton(
                icon: Icon(Icons.share),
                onPressed: () {
                  // Acción para compartir
                },
              ),
            ],
          ),
          // Espacio entre la publicación y los comentarios
          SizedBox(height: 8.0),
          // Sección de comentarios (puedes agregar una lista de comentarios aquí)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Comentarios:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          // Puedes agregar una lista de comentarios aquí
        ],
      ),
    );
  }
}
