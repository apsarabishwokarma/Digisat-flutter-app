import 'package:flutter/material.dart';

class SplashPage2 extends StatelessWidget {
  const SplashPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/SplashScreen.png'),
          fit: BoxFit.cover,
        ),
      ),
      //child: const Text("Online learning"),
      child: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            Image.asset(
              'assets/images/splashimage2.png',
              height: 250,
            ),
            const Spacer(),
            const Text(
              "Empowering Your SAT Success",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
