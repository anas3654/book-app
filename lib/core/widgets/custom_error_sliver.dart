import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorSliver extends StatelessWidget {
  const CustomErrorSliver({required this.errorMassage, super.key});

  final String errorMassage;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Center(
        child: Text(
          errorMassage,
          style: Styles.textStyle18,
        ),
      ),
    );
  }
}
