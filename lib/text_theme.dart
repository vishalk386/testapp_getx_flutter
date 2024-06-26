import 'package:flutter/material.dart';

class MyTextTheme {
  MyTextTheme._();

  static TextTheme mytextTheme = TextTheme(
    //footerText
    bodySmall: const TextStyle().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),

    //Navigation Link
    displaySmall: const TextStyle().copyWith(
      fontWeight: FontWeight.normal,
      fontSize: 14,
    ),

    //Button Text
    labelLarge:
    const TextStyle().copyWith(fontWeight: FontWeight.bold, fontSize: 12),

    //SubTitle Text Italic
    titleMedium:
    const TextStyle().copyWith(fontStyle: FontStyle.italic, fontSize: 12),

    //Subtitle Text
    titleSmall:
    const TextStyle().copyWith(fontWeight: FontWeight.normal, fontSize: 12),

    //Heading 1
    headlineLarge:
    const TextStyle().copyWith(fontWeight: FontWeight.bold, fontSize: 24),

    //Heading 2
    headlineMedium:
    const TextStyle().copyWith(fontWeight: FontWeight.bold, fontSize: 20),

    //Heading 3
    headlineSmall:
    const TextStyle().copyWith(fontWeight: FontWeight.bold, fontSize: 18),

    //Heading 4
    bodyLarge: const TextStyle().copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 16,
    ),

    //Heading 4 Italic
    displayMedium:
    const TextStyle().copyWith(fontSize: 16, fontStyle: FontStyle.italic),

    //Body Text
    bodyMedium:
    const TextStyle().copyWith(fontWeight: FontWeight.normal, fontSize: 14),

    //Bold title
    titleLarge:
    const TextStyle().copyWith(fontWeight: FontWeight.bold, fontSize: 14),

    //Label
    labelSmall:
    const TextStyle().copyWith(fontWeight: FontWeight.bold, fontSize: 9),

    //Button Text 2
    displayLarge:
    const TextStyle().copyWith(fontWeight: FontWeight.bold, fontSize: 16),
  );
}