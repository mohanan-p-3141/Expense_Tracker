import 'package:flutter/material.dart';

import 'package:expense_tracker/widgets/expenses.dart';

var MColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(196, 7, 7, 200),
);

var MDarkColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);

void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        useMaterial3: true,
        colorScheme: MDarkColorScheme,
        cardTheme: const CardTheme().copyWith(
          color: MDarkColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: MDarkColorScheme.primaryContainer,
            foregroundColor: MDarkColorScheme.onPrimaryContainer,
          ),
        ),
      ),
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: MColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: MColorScheme.onPrimaryContainer,
          foregroundColor: MColorScheme.primaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: MColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: MColorScheme.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                fontWeight: FontWeight.bold,
                color: MColorScheme.onSecondaryContainer,
                fontSize: 17,
              ),
            ),
      ),
      // themeMode: ThemeMode.system,
      home: const Expenses(),
    ),
  );
}
