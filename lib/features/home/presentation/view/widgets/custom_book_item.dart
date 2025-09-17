import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({required this.imagePath, super.key});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(right: 3.w),
      child: AspectRatio(
        aspectRatio: 0.7,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0.05.dp),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(imagePath),
            ),
          ),
        ),
      ),
    );
  }
}
