import 'package:digisat_app/pages/auth/signup_form_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DigiSat());
}

class DigiSat extends StatelessWidget {
  const DigiSat({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'DigiSat',
      debugShowCheckedModeBanner: false,
      home: FormPage(),
    );
  }
}
