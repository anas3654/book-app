import 'package:bookly_app/features/home/presentation/view/widgets/body_home_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyHomeView(),
    );
  }
}
