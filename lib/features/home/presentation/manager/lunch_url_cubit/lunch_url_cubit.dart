import 'package:bloc/bloc.dart';
import 'package:url_launcher/url_launcher.dart';

part 'lunch_url_state.dart';

class LunchUrlCubit extends Cubit<LunchUrlState> {
  LunchUrlCubit() : super(LunchUrlInitial());

  Future<void> lunchUrl({required String? url})async{
    emit(LunchUrlLoading());
    Uri uri = Uri.parse(url!);
    if(await canLaunchUrl(uri)){
    await launchUrl(uri);
    emit(LunchUrlSuccess());
    }
    else{
      emit(LunchUrlFailure("Can't Preview this link"));
    }
  }
}
