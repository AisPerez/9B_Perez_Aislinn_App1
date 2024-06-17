import 'package:flutter/material.dart';

class PostCaption extends StatelessWidget {
  const PostCaption({super.key, required this.caption});

  final String caption;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          caption,
        ),
      ),
    );
  }
}
