import 'package:flutter/material.dart';

class AboutDigiSat extends StatelessWidget {
  const AboutDigiSat({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        shadowColor: Colors.transparent,
        title: const Text(
          "About Digisat",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Introducing Digisat, the ultimate SAT preparation app designed to revolutionize your test readiness. With an expansive library of study materials, interactive practice tests mirroring the actual exam experience, and expert video tutorials, Digisat ensures a comprehensive and engaging learning journey. Unleash the power of real SAT questions, track your progress with in-depth analytics, and personalize your study plan to optimize results.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Our mobile-friendly design allows you to study on the go, while our supportive community and customer service ensure you\'re never alone in your preparation. Upgrade to Digisat Premium for exclusive features and personalized coaching support. Let Digisat be your guide to SAT success - download the app today and elevate your path to academic excellence.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'For more knowledge, check this out: What is SAT – Know all about SAT (SAT.com)',
              style: TextStyle(fontSize: 16.0, color: Colors.blue),
            ),
            SizedBox(height: 16.0),
            Text(
              'Contact Information\nIf you have questions or concerns about these, please contact us at [digisatsupportteam@gmail.com].',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Thank you for using Digisat!',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
