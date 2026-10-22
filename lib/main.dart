// main.dart

import 'package:flutter/material.dart';
import 'package:bmr_calculator/pages/input_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color.fromARGB(255, 140, 119, 0),
        scaffoldBackgroundColor: const Color.fromARGB(255, 117, 104, 75),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 80, 65, 17),
          centerTitle: true,
          elevation: 0.0,
        ),
      ),
      home: InputPage(),
    );
  }
}