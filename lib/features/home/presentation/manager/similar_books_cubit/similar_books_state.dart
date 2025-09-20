part of 'similar_books_cubit.dart';

abstract class SimilarBooksState {}

final class SimilarBooksInitial extends SimilarBooksState {}

final class SimilarBooksLoading extends SimilarBooksState {}

final class SimilarBooksSuccess extends SimilarBooksState {
  final List<BookModel> books;

  SimilarBooksSuccess(this.books);
}

final class SimilarBooksFailure extends SimilarBooksState {
  final String errorMassage;

  SimilarBooksFailure(this.errorMassage);
}
