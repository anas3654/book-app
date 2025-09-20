import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/book_action.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/custom_book_item.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/similar_list_view.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BodyBookDetailsView extends StatelessWidget {
  const BodyBookDetailsView({super.key, required this.book});

  final BookModel book;

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
                SizedBox(
                  height: 27.h,
                  child: CustomBookItem(
                      imagePath: book.volumeInfo?.imageLinks?.thumbnail ?? ""),
                ),
                SizedBox(height: 2.h),
                Text(
                  book.volumeInfo?.title ?? "Unknown title",
                  textAlign: TextAlign.center,
                  style: Styles.textStyle25,
                ),
                SizedBox(height: 1.h),
                Opacity(
                  opacity: 0.7,
                  child: Text(
                    book.volumeInfo?.authors?[0] ?? "Unknown Author",
                    style: Styles.textStyle18.copyWith(
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                SizedBox(height: 1.h),
                BookRating(),
                SizedBox(height: 3.h),
                BookAction(book: book,),
                SizedBox(height: 3.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "You can also like",
                    style: Styles.textStyle16
                        .copyWith(fontWeight: FontWeight.w800),
                  ),
                ),
                SizedBox(height: 3.h),
                SimilarListView(),
                SizedBox(height: 5.h),
              ],
            ),
          ),
        )
      ],
    );
  }
}
