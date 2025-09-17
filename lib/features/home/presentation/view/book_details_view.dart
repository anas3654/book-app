import 'package:bookly_app/features/home/presentation/view/widgets/body_book_details_view.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyBookDetailsView(),
    );
  }
}
