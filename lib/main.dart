import 'package:flutter/material.dart';
import 'package:travel/config/theme.dart';
import 'package:travel/pages/home.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),

      // This is global theme used throughout the app
      theme: defaultTheme,
    );
  }
}
