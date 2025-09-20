import 'package:flutter/material.dart';

class CustomLoadingSliver extends StatelessWidget {
  const CustomLoadingSliver({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
