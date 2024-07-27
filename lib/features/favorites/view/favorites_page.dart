import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rhymer_app/ui/ui.dart';

@RoutePage()
class FavoritesPage extends StatelessWidget {
  const FavoritesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          centerTitle: true,
          floating: true,
          //pinned: true,
          snap: true,
          elevation: 0,
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.transparent,
          title: Text('Избранное'),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverList.builder(
          itemBuilder: (context, index) => const RhymeListCard(
            isFavorite: true,
            rhyme: 'rhyme',
            sourceWord: 'lox',
          ),
        )
      ],
    );
  }
}
