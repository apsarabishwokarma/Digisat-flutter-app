import 'package:flutter/material.dart';

class SettingCard extends StatelessWidget {
  const SettingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        shadowColor: Colors.transparent,
        title: const Text(
          'Setting',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ProfileCard(
                icon: Icons.credit_card,
                title: 'Payment Method',
              ),
              SizedBox(height: 12),
              ProfileCard(
                icon: Icons.file_open,
                title: 'About SAT',
              ),
              SizedBox(height: 12),
              ProfileCard(
                icon: Icons.file_open,
                title: 'About DigiSAT',
              ),
              SizedBox(height: 12),
              ProfileCard(
                icon: Icons.key_outlined,
                title: 'Change Password',
              ),
              SizedBox(height: 12),
              ProfileCard(
                icon: Icons.notifications,
                title: 'Notifications',
              ),
              SizedBox(height: 12),
              ProfileCard(
                icon: Icons.shield,
                title: 'Terms & Condition',
              ),
              SizedBox(height: 12),
              ProfileCard(
                icon: Icons.question_answer_rounded,
                title: 'FAQs',
              ),
              SizedBox(height: 12),
              ProfileCard(
                icon: Icons.dangerous_rounded,
                title: 'Report Issue',
              ),
              SizedBox(height: 12),
              ProfileCard(
                icon: Icons.share,
                title: 'Invite Friends',
              ),
              SizedBox(height: 12),
              ProfileCard(
                icon: Icons.logout,
                title: 'Log Out',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  final IconData icon;
  final String title;

  const ProfileCard({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_right),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
