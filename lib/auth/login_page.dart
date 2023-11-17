import 'package:digisat_app/auth/forget_password_screen.dart';
import 'package:digisat_app/auth/signup_page.dart';
import 'package:digisat_app/pages/home_page.dart';
import 'package:digisat_app/widgets/material.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

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
        child: Form(
          key: _formKey,
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
              const SizedBox(height: 50),
              TextFormField(
                decoration:
                    const InputDecoration(labelText: 'Email', border: OutlineInputBorder(), hintText: AutofillHints.email),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email address';
                  }
                  // Email regex validation
                  if (!RegExp(r"^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$").hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 29),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  // You can add more password validation logic if needed
                  return null;
                },
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, navigate to the HomePage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  }
                },
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
                child: const Text(
                  'Forgot Password?',
                  textAlign: TextAlign.left,
                ),
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
                  backgroundColor: Colors.white,

                  //     border-radius: 6px,
                  //  border: 1px solid var(--slate-100, #F1F5F9);
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add_box_rounded),
                    SizedBox(width: 10),
                    Text('Continue with Google'),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              // ElevatedButton(
              //   onPressed: () {},
              //   style: ElevatedButton.styleFrom(
              //     backgroundColor: violet[600],
              //   ),
              //   child: const Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Icon(Icons.access_alarm),
              //       SizedBox(width: 10),
              //       Text('Continue with Apple ID'),
              //     ],
              //   ),
              // ),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                  side: BorderSide(width: 1, color: Colors.black), // 1px border
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6), // Border radius
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add_box_rounded),
                    SizedBox(width: 10),
                    Text('Continue with Google'),
                  ],
                ),
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
      ),
    );
  }
}
