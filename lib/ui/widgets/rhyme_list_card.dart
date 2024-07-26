import 'package:flutter/material.dart';

class RhymeListCard extends StatelessWidget {
  const RhymeListCard({super.key, this.isFavorite = false});

  final bool isFavorite;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(left: 12),
      margin: const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 10),
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('rhyme', style: theme.textTheme.bodyLarge),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite, color: isFavorite ? theme.primaryColor : theme.hintColor.withOpacity(0.2)),
          )
        ],
      ),
    );
  }
}
