import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({required this.animationController,required this.slidingAnimation,super.key});
  final AnimationController animationController;
  final Animation<Offset> slidingAnimation;
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context,_) {
          return SlideTransition(
            position: slidingAnimation,
            child: Text(
              "Read free books",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.sp),
            ),
          );
        }
    );
  }
}


