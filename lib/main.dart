import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';

var kcolorscheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 96, 59, 181));

var kDarkScheme = ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 5, 99, 125));
void main() {
  runApp(MaterialApp(
    darkTheme: ThemeData.dark().copyWith(
      useMaterial3: true,
      colorScheme: kDarkScheme,
      cardTheme: const CardTheme().copyWith(
        color: kDarkScheme.secondaryContainer,
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        backgroundColor: kDarkScheme.primaryContainer,
      )),
    ),
    theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kcolorscheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kcolorscheme.onPrimaryContainer,
          foregroundColor: kcolorscheme.primaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: kcolorscheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
          backgroundColor: kcolorscheme.primaryContainer,
        )),
        textTheme: ThemeData().textTheme.copyWith(
                titleLarge: TextStyle(
              fontWeight: FontWeight.bold,
              color: kcolorscheme.onSecondaryContainer,
            ))),
    home: const Expenses(),
  ));
}
