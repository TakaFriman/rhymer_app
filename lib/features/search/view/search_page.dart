import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rhymer_app/features/search/components/components.dart';
import 'package:rhymer_app/ui/ui.dart';

@RoutePage()
class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          centerTitle: true,
          floating: true,
          pinned: true,
          snap: true,
          elevation: 0,
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.transparent,
          title: const Text('Rhymer'),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(70),
            child: SearchButton(
              onTap: () {
                showBottomSheet(
                  backgroundColor: Colors.white,
                  context: context,
                  builder: (context) => const SizedBox(
                    height: 500,
                    width: double.infinity,
                    child: Text('sssss'),
                  ),
                );
              },
            ),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 100,
            child: ListView.separated(
                itemCount: 10,
                separatorBuilder: (context, index) => const SizedBox(width: 16),
                padding: const EdgeInsets.only(left: 16),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final rhymes = List.generate(4, (index) => 'рифма $index');
                  return RhymeHistoryCard(rhymes: rhymes);
                }),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverList.builder(
          itemBuilder: (context, index) => const RhymeListCard(
            rhyme: 'rhyme',
          ),
        )
      ],
    );
  }
}
