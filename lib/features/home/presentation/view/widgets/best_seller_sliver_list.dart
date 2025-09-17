import 'package:bookly_app/features/home/presentation/view/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';



class BestSellerSliverList extends StatelessWidget {
  const BestSellerSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
            childCount: 6,
      (context, index) {
        return Padding(
          padding: EdgeInsets.only(left: 4.w),
          child: BestSellerItem(),
        );
      },
    ));
  }
}
