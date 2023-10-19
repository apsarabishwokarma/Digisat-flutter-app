import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/AuthScreen.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: const Column(
        children: [
          Text(
            "Login",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black, decoration: TextDecoration.none),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "Welcome back! Access your SAT preparation journey ",
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
