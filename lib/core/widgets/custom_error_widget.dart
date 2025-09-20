import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({required this.errorMassage,super.key});
  final String errorMassage;
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(errorMassage,style: Styles.textStyle18,));
  }
}
