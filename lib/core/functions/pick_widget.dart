import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/manager/lunch_url_cubit/lunch_url_cubit.dart';
import 'package:flutter/material.dart';

Widget pickWidget(LunchUrlState state) {
  if (state is LunchUrlSuccess) {
    return Text("Preview", style: Styles.textStyle20
        .copyWith(fontWeight: FontWeight.bold, color: Colors.black),);
  } else if (state is LunchUrlFailure) {
    return Text("Can't Preview this book", style: Styles.textStyle20
        .copyWith(fontWeight: FontWeight.bold, color: Colors.black),);
  }else if(state is LunchUrlInitial){
    return Text("Preview", style: Styles.textStyle20
        .copyWith(fontWeight: FontWeight.bold, color: Colors.black),);
  }else {
    return CircularProgressIndicator(color: kPrimaryColor,);
  }
}