import 'package:digisat_app/auth/login_or_sign_page.dart';
import 'package:digisat_app/auth/login_page.dart';
import 'package:digisat_app/profile_setting/about_digisat.dart';
import 'package:digisat_app/profile_setting/about_sat.dart';
import 'package:digisat_app/profile_setting/change_password.dart';
import 'package:digisat_app/profile_setting/help_centre.dart';
import 'package:digisat_app/profile_setting/invite_friends.dart';
import 'package:digisat_app/profile_setting/notification_setting.dart';
import 'package:digisat_app/profile_setting/report_issue.dart';
import 'package:digisat_app/profile_setting/terms_condition.dart';
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ProfileCard(
                icon: Icons.credit_card,
                title: 'Payment Method',
                page: LoginPage(),
              ),
              const ProfileCard(
                icon: Icons.file_open,
                title: 'About SAT',
                page: AboutSat(),
              ),
              const ProfileCard(
                icon: Icons.file_open,
                title: 'About DigiSAT',
                page: AboutDigiSat(),
              ),
              const ProfileCard(
                icon: Icons.key_outlined,
                title: 'Change Password',
                page: ChangePassword(),
              ),
              const ProfileCard(
                icon: Icons.notifications,
                title: 'Notifications',
                page: NotificationSettings(),
              ),
              const ProfileCard(
                icon: Icons.shield,
                title: 'Terms & Condition',
                page: TermsCondition(),
              ),
              const ProfileCard(
                icon: Icons.question_answer_rounded,
                title: 'FAQs',
                page: FAQs(),
              ),
              const ProfileCard(
                icon: Icons.dangerous_rounded,
                title: 'Report Issue',
                page: ReportIssue(),
              ),
              const ProfileCard(
                icon: Icons.share,
                title: 'Invite Friends',
                page: InviteFriends(),
              ),
              const ProfileCard(
                icon: Icons.logout,
                title: 'Log Out',
                page: LoginSignUpPage(),
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
  final Widget page;

  const ProfileCard({required this.icon, required this.title, required this.page});

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
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => page,
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
