import 'package:digisat_app/auth/login_page.dart';
import 'package:digisat_app/auth/signup_page.dart';
import 'package:flutter/material.dart';

class LoginSignUpPage extends StatelessWidget {
  const LoginSignUpPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/LoginSignupScreenbgi.png'), fit: BoxFit.cover),
      ),
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const SizedBox(height: 50),
          const Text(
            "Let's Start",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              decoration: TextDecoration.none,
            ),
          ),
          const SizedBox(height: 100),
          Image.asset(
            "assets/Images/loginorsignup.png",
            height: 250,
            width: 250,
          ),
          const SizedBox(height: 100),
          ElevatedButton(
            onPressed: () {
              // Navigate to the LoginPage when the Login button is pressed.
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => LoginPage(),
              ));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
            ),
            child: const Text("Login"),
          ),
          const SizedBox(height: 17),
          SizedBox(
            //width: double.maxFinite,
            child: ElevatedButton(
              onPressed: () {
                // Navigate to the SignupPage when the Signup button is pressed.
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SignUpPage(),
                ));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                elevation: 0,
                side: const BorderSide(width: 1, color: Colors.grey), // 1px border
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6), // Border radius
                ),
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
