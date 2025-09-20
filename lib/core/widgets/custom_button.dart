import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {this.topLeft = 0,
        this.topRight = 0,
        this.bottomLeft = 0,
        this.bottomRight = 0,
        required this.color,
        required this.widget,
        required this.onPressed,
        super.key});

  final double topLeft;
  final double topRight;
  final double bottomLeft;
  final double bottomRight;
  final Color color;
  final Widget widget;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 6.h,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(topLeft),
              bottomLeft: Radius.circular(bottomLeft),
              bottomRight: Radius.circular(bottomRight),
              topRight: Radius.circular(topRight),
            ),
          ),
          backgroundColor: color,
        ),
        child: widget
      ),
    );
  }
}
