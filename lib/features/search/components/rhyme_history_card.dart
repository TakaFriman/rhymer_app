import 'package:flutter/material.dart';
import 'package:rhymer_app/ui/ui.dart';

class RhymeHistoryCard extends StatelessWidget {
  const RhymeHistoryCard({super.key, required this.rhymes});

  final List<String> rhymes;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BaseContainer(
        padding: const EdgeInsets.all(16),
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('slovo',
                style: theme.textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.w700,
                )),
            Wrap(
              children: rhymes
                  .map(
                    (e) => Padding(padding: const EdgeInsets.only(right: 8), child: Text(e)),
                  )
                  .toList(),
            )
          ],
        ));
  }
}
