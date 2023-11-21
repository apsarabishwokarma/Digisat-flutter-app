import 'package:digisat_app/auth/login_or_sign_page.dart';
import 'package:flutter/material.dart';

class SplashPage3 extends StatelessWidget {
  const SplashPage3({super.key, required Null Function() onNextPressed});

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
              Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginSignUpPage()),
                    );
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      "Skip",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 135),
              Image.asset(
                'assets/images/splashimage3.png',
                height: 250,
              ),
              const SizedBox(height: 35),
              const Text(
                "Prepare Smarter, Score Higher",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
        Positioned(
          bottom: 30,
          right: 16,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                color: Colors.white,
                icon: const Icon(Icons.arrow_forward),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginSignUpPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
