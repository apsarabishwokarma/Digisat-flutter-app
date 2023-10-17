import 'package:flutter/material.dart';

class LoginSignUpPage extends StatelessWidget {
  const LoginSignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/LoginSignupScreen.png'),
        ),
      ),
      child: Column(
        children: [
          const Spacer(),
          const Text(
            "Let's Start",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          Image.asset(
            "assets/Images/loginorsignup.png",
            height: 250,
            width: 250,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
