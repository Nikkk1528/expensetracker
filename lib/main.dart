import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:expense_tracker/widgets/expenses.dart';

var kColorSc =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(245, 71, 185, 220));
var kColorS =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(211, 160, 229, 229));

// for dark mode settings using variable kDarkColorScheme
var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  // ]).then((fn) {
    runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false, //nikhil
        darkTheme: ThemeData.dark().copyWith(
          useMaterial3: true,
          colorScheme: kDarkColorScheme,
          cardTheme: const CardTheme().copyWith(
            color: kDarkColorScheme.secondaryContainer,
            margin: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 9,
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: kDarkColorScheme.primaryContainer,
              foregroundColor: kDarkColorScheme.onPrimaryContainer,
            ),
          ),
        ),
        theme: ThemeData().copyWith(
            useMaterial3: true,
            colorScheme: kColorSc,
            appBarTheme: const AppBarTheme().copyWith(
              backgroundColor: kColorS.onPrimaryContainer,
              foregroundColor: kColorS.primaryContainer,
            ),
            cardTheme: const CardTheme().copyWith(
              color: kColorS.secondaryContainer,
              margin: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 9,
              ),
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: kColorS.primaryContainer,
              ),
            ),
            textTheme: ThemeData().textTheme.copyWith(
                  titleLarge: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kColorSc.onSecondaryContainer,
                      fontSize: 15),
                )),

        // themeMode: ThemeMode.system,   //default
        home: const Expenses(),
      ),
    );
  // });
}
