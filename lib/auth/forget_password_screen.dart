import 'package:digisat_app/auth/login_page.dart';
import 'package:digisat_app/auth/otp_screen.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Set background color to transparent
        elevation: 0, // Remove elevation/shadow
        shadowColor: Colors.transparent,
        title: const Text(
          "Forgot Password",
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black), // Set the back button color to black
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/AuthScreen.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
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
