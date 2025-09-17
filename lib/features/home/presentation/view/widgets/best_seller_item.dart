import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/constants.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push("/bookDetailsView"),
      child: Padding(
        padding: EdgeInsets.only(right: 5.w,top: 1.h,bottom: 1.h),
        child: SizedBox(
          height: 15.h,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 7 / 10,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(0.05),
                    image: DecorationImage(
                      image: AssetImage("assets/images/book_cover.png"),
                    ),
                  ),
                ),
              ),
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
                        "Harry Potter and the Goblet of Fire ",
                        style: Styles.textStyle20
                            .copyWith(fontFamily: kGTSectraFine),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(height: 0.5.h),
                    Text(
                      "J.K. Rowling",
                      style: Styles.textStyle14,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 0.5.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "19.9 €",
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
