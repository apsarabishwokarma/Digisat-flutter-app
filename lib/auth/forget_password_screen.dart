import 'package:digisat_app/auth/login_page.dart';
import 'package:digisat_app/auth/otp_screen.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        shadowColor: Colors.transparent,
        title: const Text(
          "Forgot Password",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/AuthScreen.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Form(
          key: _formKey,
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
                decoration:
                    const InputDecoration(labelText: 'Email', border: OutlineInputBorder(), hintText: AutofillHints.email),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'please enter you email address';
                  }
                  if (!RegExp(r"^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$").hasMatch(value)) {
                    return 'please enter  valid email address';
                  }
                  /**^: Asserts the start of the line.
[a-zA-Z0-9+_.-]+: Matches one or more characters that are either letters (both uppercase and lowercase), digits, or the special characters '+', '_', '.', or '-'.
@: Matches the '@' symbol.
[a-zA-Z0-9.-]+: Matches one or more characters that are either letters (both uppercase and lowercase), digits, or the special characters '.', or '-'.
$: Asserts the end of the line. */
                  // Additional check for the domain
                  if (!value.endsWith('gmail.com')) {
                    return 'Please enter a valid Gmail address';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Navigate to the OTP screen when "Reset Password" is pressed.
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const OtpPage(),
                    ));
                  }
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
      ),
    );
  }
}
