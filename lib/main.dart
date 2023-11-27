import 'package:digisat_app/auth/login_page.dart';
import 'package:digisat_app/themes/my_themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DigiSat());
}

class DigiSat extends StatelessWidget {
  const DigiSat({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DigiSat',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: AppTheme.themeData(),
    );
  }
}
