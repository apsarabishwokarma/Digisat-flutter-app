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
      child: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            Image.asset(
              'assets/images/splashimage3.png',
              height: 250,
            ),
            const Spacer(),
            const Text(
              "Prepare Smarter, Score Higher ",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
