import "package:bookly_app/features/search/presentation/view/widgets/body_search_view.dart";
import "package:flutter/material.dart";

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodySearchView(),
    );
  }
}
