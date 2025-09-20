part of 'featured_books_cubit.dart';

abstract class FeaturedBooksState {}

final class FeaturedBooksInitial extends FeaturedBooksState {}

final class FeaturedBooksLoading extends FeaturedBooksState{}

final class FeaturedBooksSuccess extends FeaturedBooksState{
  final List<BookModel> books;

  FeaturedBooksSuccess(this.books);
}

final class FeaturedBooksFailure extends FeaturedBooksState{
  final String errorMassage;

  FeaturedBooksFailure(this.errorMassage);
}
