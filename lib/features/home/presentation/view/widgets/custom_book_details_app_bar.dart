import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      right: false,
      left: false,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: ()=> Navigator.pop(context), icon: Icon(FontAwesomeIcons.xmark)),
          IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.cartShopping)),

        ],
      ),
    );
  }
}