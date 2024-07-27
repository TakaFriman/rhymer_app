import 'package:flutter/material.dart';
import 'package:rhymer_app/ui/ui.dart';

class RhymeListCard extends StatelessWidget {
  const RhymeListCard({super.key, this.isFavorite = false, this.sourceWord, required this.rhyme});

  final bool isFavorite;
  final String? sourceWord;
  final String rhyme;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BaseContainer(
      width: double.infinity,
      padding: const EdgeInsets.only(left: 12),
      margin: const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            if (sourceWord != null) ...[
              Text(sourceWord!, style: theme.textTheme.bodyLarge),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: theme.hintColor.withOpacity(0.4),
                ),
              ),
            ],
            Text(rhyme, style: theme.textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w600)),
          ]),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite, color: isFavorite ? theme.primaryColor : theme.hintColor.withOpacity(0.2)),
          )
        ],
      ),
    );
  }
}
