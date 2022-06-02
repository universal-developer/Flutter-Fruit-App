import 'package:flutter/material.dart';
import 'package:fruit_app/colors.dart';
import 'package:fruit_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: backgroundColor,
          ),
          splashColor: orangeColor,
          hoverColor: orangeColor,
          focusColor: orangeColor,
          highlightColor: orangeColor,
          useMaterial3: true,
          scaffoldBackgroundColor: backgroundColor,
        ),
        darkTheme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: backgroundColor,
          ),
          splashColor: orangeColor,
          hoverColor: orangeColor,
          focusColor: orangeColor,
          highlightColor: orangeColor,
          brightness: Brightness.dark,
          scaffoldBackgroundColor: backgroundColor,
          useMaterial3: true,
        ),
        themeMode: ThemeMode.dark,
        home: const HomeScreen());
  }
}
