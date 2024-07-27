import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rhymer_app/ui/ui.dart';

@RoutePage()
class HistoryPage extends StatelessWidget {
  const HistoryPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          centerTitle: true,
          floating: true,
          // pinned: true,
          snap: true,
          elevation: 0,
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.transparent,
          title: Text('История'),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 1.6,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return RhymeHistoryCard(rhymes: [List.generate(3, (int index) => 'Рифма $index').toString()]);
                },
                childCount: 20,
              )),
        )
      ],
    );
  }
}
