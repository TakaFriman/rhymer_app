import 'package:flutter/material.dart';

const primaryColor = Color(0xFFF82B10);
final themeData = ThemeData(
  scaffoldBackgroundColor: const Color(0xFFEFF1F3),
  useMaterial3: true,
  primaryColor: primaryColor,
  colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
  textTheme: const TextTheme(
    titleMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
  ),
);
