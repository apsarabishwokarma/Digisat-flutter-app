import 'package:flutter/material.dart';

class SplashPage1 extends StatelessWidget {
  const SplashPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        //Image.asset('assets/images/SplashScreen.png'),
        image: DecorationImage(
          image: AssetImage('assets/images/SplashScreen.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 250,
              alignment: Alignment.center,
            ),
            const Text(
              "DIGISAT",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
