import 'package:flutter/material.dart';
import 'package:flutter_themedemo/color.dart';

ThemeData scitTheme() {
  final ThemeData baseTheme = ThemeData(
    fontFamily: 'Kanit',
  );

  return baseTheme.copyWith(
    colorScheme: baseTheme.colorScheme.copyWith(
      //Primary Colors
      primary: purplePrimary,
      onPrimary: whitePure,
      //Secondary Colors
      secondary: yellowSecondary,
      onSecondary: blackGrey,
      //Background
      background: lightPurple,
      onBackground: lightRed,
    ),

    textTheme: baseTheme.textTheme.copyWith(
      headlineLarge: baseTheme.textTheme.headlineLarge!.copyWith(
        fontFamily: 'Anton',
        fontSize: 48,
      ),
      headlineMedium: baseTheme.textTheme.headlineMedium!.copyWith(
        fontFamily: 'Anton',
        fontSize: 38,
      ),
      headlineSmall: baseTheme.textTheme.headlineSmall!.copyWith(
        fontFamily: 'Anton',
        fontSize: 24,
      ),
      bodyLarge: baseTheme.textTheme.bodyLarge!.copyWith(
        //fontFamily: 'Pacifico',
        fontSize: 18,
      ),
      bodySmall: baseTheme.textTheme.bodySmall!.copyWith(
        fontFamily: 'Pacifico',
        fontSize: 15,
      ),
    ).apply(
      displayColor: purplePrimary,
      bodyColor: blackGrey,
    ),

    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(
          width: 0,
          style: BorderStyle.none,
        ),
      ),
      contentPadding: const EdgeInsets.all(8.0),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          )
        ),
      )
    ),
  );
}