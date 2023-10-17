import 'package:flutter/material.dart';

class SplashPage3 extends StatelessWidget {
  const SplashPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/SplashScreen.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
