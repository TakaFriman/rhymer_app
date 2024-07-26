import 'package:flutter/material.dart';
import 'package:rhymer_app/ui/ui.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BaseContainer(
      margin: const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 10),
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          const Icon(Icons.search),
          const SizedBox(width: 12),
          Text('Поиск рифм...', style: theme.textTheme.bodyLarge),
        ],
      ),
    );
  }
}
