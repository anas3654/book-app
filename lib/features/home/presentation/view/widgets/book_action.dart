import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            onPressed: (){},
            topLeft: 16,
            bottomLeft: 16,
            text: "19.9 €",
            color: Colors.white,
            textStyle: Styles.textStyle20
                .copyWith(fontWeight: FontWeight.bold,color: Colors.black),
          ),
        ),
        Expanded(
          child: CustomButton(
            onPressed: (){},
            topRight: 16,
            bottomRight: 16,
            color: Colors.deepOrange,
            text: "Free Preview",
            textStyle: Styles.textStyle18.copyWith(color: Colors.white),
          ),
        )
      ],
    );
  }
}

