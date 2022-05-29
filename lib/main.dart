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
          useMaterial3: true,
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          backgroundColor: backgroundColor,
          useMaterial3: true,
        ),
        themeMode: ThemeMode.dark,
        home: const HomeScreen());
  }
}
