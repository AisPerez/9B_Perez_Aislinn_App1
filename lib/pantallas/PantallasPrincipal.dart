import 'package:flutter/material.dart';
class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({
    super.key,
  });

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
              username: 'Aislinn Perez',
              time: 'Hace 20 horas',
              content: '¡MEMES!',
              imageUrl: 'https://st1.uvnimg.com/ef/01/e8475c504dffa0dc8a1974c25af6/memes-lunes-6.png',
              userImageUrl: 'https://i.pinimg.com/736x/e1/3d/3c/e13d3c0704b1e46de64419dfe7ced15d.jpg',
            ),
            FacebookPostCard(
              username: 'Anely Perez',
              time: 'Hace 20 minutos',
              content: 'Lo mas gracioso!',
              imageUrl: 'https://st1.uvnimg.com/ef/01/e8475c504dffa0dc8a1974c25af6/memes-lunes-6.png',
              userImageUrl: 'https://i.pinimg.com/736x/48/2b/18/482b18541603f9bc2b4761a88a7653ff.jpg',
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
