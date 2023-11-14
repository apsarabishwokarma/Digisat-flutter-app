import 'package:digisat_app/auth/forget_password_screen.dart';
import 'package:digisat_app/auth/signup_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});

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
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const Text(
              "Login",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black, decoration: TextDecoration.none),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "Welcome back! Access your SAT preparation journey ",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black,
                decoration: TextDecoration.none,
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Email', border: OutlineInputBorder(), hintText: AutofillHints.email),
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true, // to hide the password input
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Login'),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                // Navigate to the ForgetPasswordPage when "Forgot Password?" is pressed.
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ForgetPassword(),
                ));
              },
              child: const Text('Forgot Password?'),
            ),
            const SizedBox(height: 16),
            const Row(
              children: [
                Expanded(
                  child: Divider(),
                ),
                Text(
                  "or",
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
                Expanded(
                  child: Divider(),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple[900],
              ),
              child: const Text('Continue with Google'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              child: const Text('Continue with Apple ID'),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                // Navigate to the SignupPage when "Don't have an account? Sign Up instead" is pressed.
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SignUpPage(),
                ));
              },
              child: const Text("Don't have an account? Sign Up instead"),
            ),
          ],
        ),
      ),
    );
  }
}