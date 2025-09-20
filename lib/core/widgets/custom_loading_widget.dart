import 'package:flutter/material.dart';

class CustomLoadingWidget extends StatelessWidget {
  const CustomLoadingWidget({required this.height, super.key});

  final double height;

  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator());
  }
}
