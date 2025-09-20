import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({required this.imagePath, super.key});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: EdgeInsets.only(right: 3.w),
        child: AspectRatio(
          aspectRatio: 0.7,
          child: CachedNetworkImage(
            imageUrl: imagePath,
            fit: BoxFit.fill,
            // placeholder: (context, url) => Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => Icon(Icons.error_outline),
          ),
        ),
      ),
    );
  }
}
