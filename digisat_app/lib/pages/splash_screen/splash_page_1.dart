import 'package:flutter/material.dart';

class SplashPage1 extends StatelessWidget {
  const SplashPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.blue.shade800,
      decoration: const BoxDecoration(
        //Image.asset('assets/images/SplashScreen.png'),
        image: DecorationImage(
          image: AssetImage('assets/images/SplashScreen.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
