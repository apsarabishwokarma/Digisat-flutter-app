import 'package:flutter/material.dart';

class CongratulationPage extends StatelessWidget {
  const CongratulationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/LoginSignupScreenbgi.png'),
        ),
      ),
      child: Column(
        children: [
          Image.asset(
            "assets/Images/congratulationimage.png",
            height: 250,
            width: 250,
          ),
          const Text(
            "Congratulation",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              decoration: TextDecoration.none,
            ),
          ),
          const Text(
            "password reset is successful",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.black,
              decoration: TextDecoration.none,
            ),
          ),
        ],
      ),
    );
  }
}
