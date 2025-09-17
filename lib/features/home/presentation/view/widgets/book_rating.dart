import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(FontAwesomeIcons.solidStar, color: Color(0xffFFDD4F), size: 18.sp),
        SizedBox(width: 2.w),
        Text("4.8", style: Styles.textStyle18),
        SizedBox(width: 2.w),
        Text("(2485)",
            style: Styles.textStyle16.copyWith(color: Color(0xff707070))),
      ],
    );
  }
}
