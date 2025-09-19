import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/search/presentation/view/widgets/custom_text_field.dart';
import 'package:bookly_app/features/search/presentation/view/widgets/result_search_list.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BodySearchView extends StatelessWidget {
  const BodySearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomTextField(),
            SizedBox(height: 2.h,),
            Text("Search result",style: Styles.textStyle18,),
            SizedBox(height: 2.h,),
            ResultSearchList()
          ],
        ),
      ),
    );
  }
}
