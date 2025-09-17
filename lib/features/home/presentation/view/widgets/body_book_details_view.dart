import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/book_action.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/book_list_view.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BodyBookDetailsView extends StatelessWidget {
  const BodyBookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.w),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                SizedBox(height: 2.h),
                SizedBox(
                  height: 27.h,
                  child: CustomBookItem(imagePath: "assets/images/book_cover.png"),
                ),
                SizedBox(height: 3.5.h),
                Text(
                  "The Jungle Book",
                  style: Styles.textStyle25,
                ),
                SizedBox(height: 1.h),
                Opacity(
                  opacity: 0.7,
                  child: Text(
                    "Rudyard Kipling",
                    style: Styles.textStyle18.copyWith(
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                SizedBox(height: 1.h),
                BookRating(),
                SizedBox(height: 3.h),
                BookAction(),
                Expanded(child: SizedBox(height: 3.h)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "You can also like",
                    style: Styles.textStyle16
                        .copyWith(fontWeight: FontWeight.w800),
                  ),
                ),
                SizedBox(height: 3.h),
                BookListView(height: 15.h),
                SizedBox(height: 5.h),
              ],
            ),
          ),
        )
      ],
    );
  }
}
