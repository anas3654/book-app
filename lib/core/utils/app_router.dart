import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/manager/lunch_url_cubit/lunch_url_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/view/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/view/home_view.dart';
import 'package:bookly_app/features/search/presentation/view/search_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: "/homeView",
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
          path: "/bookDetailsView",
          builder: (context, state) => MultiBlocProvider(providers: [
                BlocProvider<SimilarBooksCubit>(
                    create: (context) =>
                        SimilarBooksCubit(getIt.get<HomeRepoImpl>())),
                BlocProvider<LunchUrlCubit>(
                  create: (context) => LunchUrlCubit(),
                )
              ], child: BookDetailsView(book: state.extra as BookModel))),
      GoRoute(
        path: "/searchView",
        builder: (context, state) => SearchView(),
      ),
    ],
  );
}
