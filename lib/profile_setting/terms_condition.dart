import 'package:flutter/material.dart';

class TermsCondition extends StatelessWidget {
  const TermsCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Set background color to transparent
        elevation: 0, // Remove elevation/shadow
        shadowColor: Colors.transparent,
        title: const Text('Terms & Conditions'),
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
              'Welcome to Digisat! Before using our app, please take a moment to review the following terms and conditions.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Acceptance of Terms\n\nBy using the Digisat app, you agree to these terms and conditions. If you do not agree with any part of these terms, please refrain from using the app.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Personal Use\n\nDigisat is intended for personal, non-commercial use only. You may not use the app for any unauthorized or unlawful purpose.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Privacy\n\nWe respect your privacy. Please review our Privacy Policy to understand how we collect, use, and protect your information.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Content\n\nThe content in the Digisat app is for educational purposes and does not constitute professional advice. We do our best to provide accurate and up-to-date information, but we cannot guarantee its accuracy.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Account Security\n\nYou are responsible for maintaining the security of your account credentials. Do not share your login information with others.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Termination\n\nDigisat reserves the right to terminate or suspend your access to the app for violating these terms or engaging in any prohibited activity.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Changes to Terms\n\nWe may update these terms and conditions at any time. Please check this page periodically for updates. Your continued use of the app after changes signifies your acceptance of the revised terms.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Disclaimer of Warranty\n\nDigisat provides the app "as is" and does not offer any warranties, express or implied.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Limitation of Liability\n\nWe are not liable for any indirect, incidental, special, or consequential damages resulting from your use of the app.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Contact Information\n\nIf you have questions or concerns about these terms, please contact us at [digisatsupportteam@gmail.com].',
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
