import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookImage extends StatelessWidget {
  const BookImage({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: AspectRatio(
        aspectRatio: 7 / 10,
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          errorWidget: (context, url, error) =>
              Icon(Icons.error_outline),
        ),
      ),
    );
  }
}