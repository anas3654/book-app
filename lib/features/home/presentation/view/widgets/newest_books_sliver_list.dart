import 'package:bookly_app/core/widgets/custom_error_sliver.dart';
import 'package:bookly_app/core/widgets/custom_loading_sliver.dart';
import 'package:bookly_app/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/book_info_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class NewestBooksSliverList extends StatelessWidget {
  const NewestBooksSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: state.books.length,
              (context, index) {
                return Padding(
                  padding: EdgeInsets.only(left: 4.w),
                  child: BookInfoItem(
                    book: state.books[index],
                  ),
                );
              },
            ),
          );
        } else if (state is NewestBooksFailure) {
          return CustomErrorSliver(errorMassage: state.errorMassage);
        } else {
          return CustomLoadingSliver();
        }
      },
    );
  }
}
