import 'package:digisat_app/auth/login_page.dart';
import 'package:digisat_app/auth/otp_screen.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0, // Remove elevation/shadow
        shadowColor: Colors.transparent,
        title: const Text(
          "Forgot Password",
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
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
            const SizedBox(height: 15),
            const Text(
              "Please enter your email address. We will send a password reset link to your email.",
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 50),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Navigate to the OTP screen when "Reset Password" is pressed.
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const OtpPage(),
                ));
              },
              child: const Text('Submit'),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                // Navigate to the LoginPage when "Remembered your password? Log in" is pressed.
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ));
              },
              child: const Text(
                "Remembered your password? Log in",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
