import 'package:digisat_app/splash_screen/splash_page.dart';
import 'package:digisat_app/widgets/material.dart';
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
        home: SplashPage(),
        theme: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: violet[600],
              fixedSize: const Size(double.infinity, 42),
              minimumSize: const Size(double.infinity, 42),
            ),
          ),
        ));
  }
}
