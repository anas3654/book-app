import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class BodySplashView extends StatelessWidget {
  const BodySplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssetsData.logo)
        ],
    );
  }
}

