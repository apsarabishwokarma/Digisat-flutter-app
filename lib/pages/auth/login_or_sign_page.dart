import 'package:flutter/material.dart';

class LoginSignUpPage extends StatelessWidget {
  const LoginSignUpPage({super.key});

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
          const Spacer(),
          const Text(
            "Let's Start",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              decoration: TextDecoration.none,
            ),
          ),
          Image.asset(
            "assets/Images/loginorsignup.png",
            height: 250,
            width: 250,
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              // Add login logic here.
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
            ),
            child: const Text("Login"),
          ),
          const SizedBox(height: 16),
          SizedBox(
            //width: double.maxFinite,
            child: ElevatedButton(
              onPressed: () {
                // Add your signup logic here.
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
              ),
              child: const Text(
                "Signup",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
