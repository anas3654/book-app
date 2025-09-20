import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_sliver.dart';
import 'package:bookly_app/core/widgets/custom_loading_widget.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

class SimilarListView extends StatelessWidget {
  const SimilarListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess){
          return SizedBox(
            height: 15.h,
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => GoRouter.of(context).push("/bookDetailsView",extra: state.books[index]),
                    child: CustomBookItem(
                      imagePath: state.books[index].volumeInfo?.imageLinks?.thumbnail ?? "",
                    ),
                  );
                }),
          );
        }
        else if (state is SimilarBooksFailure){
          return CustomErrorWidget(errorMassage: state.errorMassage);
        }
        else{
          return CustomLoadingWidget();
        }
      },
    );
  }
}
