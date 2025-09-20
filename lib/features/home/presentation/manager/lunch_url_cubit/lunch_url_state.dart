part of 'lunch_url_cubit.dart';

abstract class LunchUrlState {}

final class LunchUrlInitial extends LunchUrlState {}

final class LunchUrlLoading extends LunchUrlState {}

final class LunchUrlSuccess extends LunchUrlState {}

final class LunchUrlFailure extends LunchUrlState {
  final String errorMassage;

  LunchUrlFailure(this.errorMassage);
}
