import 'package:flutter/material.dart';
import '/widgets/iconbuttons.dart';
import '/widgets/post_item.dart'; // Importa el widget PostItem
import '/datos/datos.dart'; // Importa los datos

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instagram'),
        backgroundColor: Colors.purple,
        actions: const [
          iconbuttons(),
          buttonicons(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: ListCard.map((post) {
            return PostItem(
              username: post['username']!,
              avatar: post['avatar']!,
              postImage: post['postImage']!,
              likes: post['likes']!,
              caption: post['caption']!,
            );
          }).toList(),
        ),
      ),
    );
  }
}
