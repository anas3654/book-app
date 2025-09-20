import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/book_info_item.dart';
import 'package:flutter/material.dart';

class ResultSearchList extends StatelessWidget {
  const ResultSearchList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) => BookInfoItem(book: BookModel()),
        itemCount: 8,
      ),
    );
  }
}
