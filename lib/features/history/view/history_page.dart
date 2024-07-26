import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HistoryPage extends StatelessWidget {
  const HistoryPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverAppBar(
          centerTitle: true,
          floating: true,
          // pinned: true,
          snap: true,
          elevation: 0,
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.transparent,
          title: Text('История'),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 16)),
        // SliverList.builder(
        //   itemBuilder: (context, index) => const RhymeListCard(isFavorite: true),
        // )
      ],
    );
  }
}
