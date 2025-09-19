import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.h, bottom: 3.h, right: 4.w, left: 4.w),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 3.h,
          ),
          Spacer(),
          GestureDetector(
            onTap: () => GoRouter.of(context).push("/searchView"),
              child: Image.asset(
            AssetsData.searchIcon,
            height: 3.h,
          ))
        ],
      ),
    );
  }
}
