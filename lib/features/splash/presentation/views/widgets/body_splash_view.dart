import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:bookly_app/features/home/presentation/view/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class BodySplashView extends StatefulWidget {
  const BodySplashView({super.key});

  @override
  State<BodySplashView> createState() => _BodySplashViewState();
}

class _BodySplashViewState extends State<BodySplashView>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigationToHome();
  }



  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        SizedBox(height: 2.h),
        SlidingText(
            animationController: animationController,
            slidingAnimation: slidingAnimation)
      ],
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));

    slidingAnimation = Tween<Offset>(begin: Offset(0, 3), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }
  void navigationToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(HomeView(), transition: Transition.fade, duration: kTransitionDuration);
    });
  }
}
