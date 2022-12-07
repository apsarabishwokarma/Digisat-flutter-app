import 'package:flutter/material.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0, //

        title: const Text(
          'Profile',
        ),
        centerTitle: true,
      ),
      body: const Text('okok'),
    );
  }
}
