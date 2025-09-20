import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/book_image.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/constants.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

class BookInfoItem extends StatelessWidget {
  const BookInfoItem({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push("/bookDetailsView",extra: book),
      child: Padding(
        padding: EdgeInsets.only(right: 5.w, top: 1.h, bottom: 1.h),
        child: SizedBox(
          height: 15.h,
          child: Row(
            children: [
              BookImage(imageUrl: book.volumeInfo?.imageLinks?.thumbnail ?? ""),
              SizedBox(
                width: 6.w,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 58.w,
                      child: Text(
                        book.volumeInfo?.title ?? "Unknown title",
                        style: Styles.textStyle20
                            .copyWith(fontFamily: kGTSectraFine),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(height: 0.5.h),
                    Text(
                      (book.volumeInfo?.authors != null && book.volumeInfo!.authors!.isNotEmpty)
                          ? book.volumeInfo!.authors!.first
                          : "Unknown Author",
                      style: Styles.textStyle14,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 0.5.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Free",
                          style: Styles.textStyle20
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        BookRating(),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


