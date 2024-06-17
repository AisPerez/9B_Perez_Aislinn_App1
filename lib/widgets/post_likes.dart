import 'package:flutter/material.dart';

class PostLikes extends StatelessWidget {
  const PostLikes({super.key, required this.likes});

  final String likes;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          likes,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
