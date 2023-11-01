import 'package:digisat_app/pages/auth/login_page.dart';
import 'package:digisat_app/pages/auth/otp_screen.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/AuthScreen.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const Text(
              "Forgot Password",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                // Navigate to the OTP screen when "Reset Password" is pressed.
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const OtpPage(),
                ));
              },
              child: const Text('Reset Password'),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                // Navigate to the LoginPage when "Remembered your password? Log in" is pressed.
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ));
              },
              child: const Text("Remembered your password? Log in"),
            ),
          ],
        ),
      ),
    );
  }
}
