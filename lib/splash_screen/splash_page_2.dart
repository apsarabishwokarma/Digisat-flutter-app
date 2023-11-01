import 'package:flutter/material.dart';

class SplashPage2 extends StatelessWidget {
  const SplashPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/SplashScreen.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SafeArea(
          child: Column(
            children: [
              const Spacer(),
              const Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Skip",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
              Image.asset(
                'assets/images/splashimage2.png',
                height: 250,
              ),
              const Spacer(),
              const Text(
                "Empowering Your SAT Success",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
        const Positioned(
          bottom: 30,
          right: 16,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
