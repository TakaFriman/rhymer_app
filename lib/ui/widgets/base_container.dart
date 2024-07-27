import 'package:flutter/material.dart';

class BaseContainer extends StatelessWidget {
  const BaseContainer(
      {super.key, required this.child, this.width, this.margin, this.padding = const EdgeInsets.only(left: 12)});

  final double? width;
  final Widget child;
  final EdgeInsets? margin;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: width,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: child,
    );
  }
}
