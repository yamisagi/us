import 'package:flutter/material.dart';


class GeneralThemeData {
  ThemeData themeData() {
    return ThemeData(
      backgroundColor: Colors.white,
      iconTheme: const IconThemeData(color: Colors.red, size: 30),
      textTheme: const TextTheme(
        headline3: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          overflow: TextOverflow.ellipsis,
        ),
        headline4: TextStyle(
            fontSize: 30,
            fontFamily: 'Pacifico',
            color: Colors.white),
        headline6: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          overflow: TextOverflow.ellipsis,
        ),
        bodyText1: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.red),
        color: Colors.transparent,
        titleTextStyle: TextStyle(
          letterSpacing: 1.3,
          fontSize: 28,
          fontFamily: 'Pacifico',
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        elevation: 0,
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
      ),
    );
  }
}
