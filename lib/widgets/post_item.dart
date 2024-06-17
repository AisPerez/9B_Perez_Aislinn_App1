import 'package:flutter/material.dart';
import 'post_header.dart';
import 'post_image.dart';
import 'post_actions.dart';
import 'post_likes.dart';
import 'post_caption.dart';

class PostItem extends StatelessWidget {
  const PostItem({
    super.key,
    required this.username,
    required this.avatar,
    required this.postImage,
    required this.likes,
    required this.caption,
    
    // required this.tarjeta
  });

  final String username;
  final String avatar;
  final String postImage;
  final String likes;
  final String caption;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PostHeader(username: username, avatar: avatar),
        PostImage(imagePath: postImage),
        const PostActions(),
        PostLikes(likes: likes),
        PostCaption(caption: caption),
        const Divider(),
      ],
    );
  }
}
