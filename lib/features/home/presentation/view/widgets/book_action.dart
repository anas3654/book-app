import 'package:bookly_app/core/functions/pick_widget.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/presentation/manager/lunch_url_cubit/lunch_url_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LunchUrlCubit, LunchUrlState>(
      builder: (context, state) {
        return Row(
          children: [
            Expanded(
              child: CustomButton(
                onPressed: () async {
                  BlocProvider.of<LunchUrlCubit>(context)
                      .lunchUrl(url: book.volumeInfo?.previewLink!);
                },
                topLeft: 16,
                bottomLeft: 16,
                topRight: 16,
                bottomRight: 16,
                widget: pickWidget(state),
                color: Colors.white,
              ),
            ),
          ],
        );
      },
    );
  }
}
