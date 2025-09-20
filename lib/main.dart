import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/simple_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
// use shimmer
void main() {
  Bloc.observer = SimpleBlocObserver();
  setupServiceLocator();
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FeaturedBooksCubit>(
          create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>())..fetchFeaturedBooks(),
        ),
        BlocProvider<NewestBooksCubit>(
          create: (context) => NewestBooksCubit(getIt.get<HomeRepoImpl>())..fetchNewestBooks(),
        )
      ],
      child: Sizer(builder: (context, orientation, deviceType) {
        return MaterialApp.router(
          routerConfig: AppRouter.router,
          theme: ThemeData(
            brightness: Brightness.dark,
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
            textSelectionTheme: TextSelectionThemeData(
              cursorColor: Colors.white,
              selectionColor: Colors.white.withValues(alpha: 0.3),
              selectionHandleColor: Colors.white,
            ),
          ),
          title: "Book App",
          debugShowCheckedModeBanner: false,
        );
      }),
    );
  }
}
