import 'package:digisat_app/profile_setting/about_digisat.dart';
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
        home: const AboutDigiSat(),
        theme: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple[900],
              fixedSize: const Size(double.infinity, 42),
              minimumSize: const Size(double.infinity, 42),
            ),
          ),
        ));
  }
}
