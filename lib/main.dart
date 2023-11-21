//import 'package:digisat_app/profile_setting/setting_cards.dart';
import 'package:digisat_app/splash_screen/splash_page.dart';
import 'package:digisat_app/widgets/material.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        //home: const SettingCard(),

        theme: ThemeData(
          textTheme: GoogleFonts.openSansTextTheme(),
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
