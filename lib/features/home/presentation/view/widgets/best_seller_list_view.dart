import 'package:bookly_app/features/home/presentation/view/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BestsellerListView extends StatelessWidget {
  const BestsellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.only(top: 3.h),
      itemBuilder: (context, index) {
        return Padding(
          padding:EdgeInsets.symmetric(vertical: 1.h),
          child: BestSellerItem(),
        );
      },
      itemCount: 6,
    );
  }
}
