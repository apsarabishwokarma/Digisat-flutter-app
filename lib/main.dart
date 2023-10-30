import 'package:digisat_app/pages/auth/signup_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DigiSat());
}

class DigiSat extends StatelessWidget {
  const DigiSat({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'DigiSat',
      debugShowCheckedModeBanner: false,
      //primarySwatch: Colors.blue,
      home: SignUpPage(),
    );
  }
}
