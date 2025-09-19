import 'package:bookly_app/features/home/presentation/view/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListView extends StatelessWidget {
  const BookListView({required this.height,super.key});

  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => GoRouter.of(context).push("/bookDetailsView"),
                child:
                    CustomBookItem(imagePath: "assets/images/book_cover.png"));
          }),
    );
  }
}
