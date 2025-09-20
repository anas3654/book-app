import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (value) {},
      cursorColor: Colors.white,
      maxLines: 1,
      decoration: InputDecoration(
          hintText: "Search for a book",
          labelText: "Search",
          labelStyle: Styles.textStyle16.copyWith(color: Colors.white),
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(),
          border: buildOutlineInputBorder(),
          prefixIconColor: Colors.white,
          prefixIcon: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(FontAwesomeIcons.xmark)),
          suffixIconColor: Colors.white
          ,
          suffixIcon: Icon(Icons.search)),
    );
  }
}

OutlineInputBorder buildOutlineInputBorder() {
  return OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white),
    borderRadius: BorderRadius.circular(16),
  );
}
