import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/best_seller_sliver_list.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/book_list_view.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BodyHomeView extends StatelessWidget {
  const BodyHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              const BookListView(),
              SizedBox(height: 5.h),
              Padding(
                padding: EdgeInsets.only(left: 4.w),
                child: Text("Best Seller", style: Styles.textStyle18),
              ),
            ],
          ),
        ),
        BestSellerSliverList()
      ],
    );
  }
}
