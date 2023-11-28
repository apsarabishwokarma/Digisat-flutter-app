import 'package:digisat_app/auth/login_page.dart';
import 'package:digisat_app/pages/dashboard/user_dashboard.dart';
import 'package:digisat_app/splash_screen/splash_page.dart';
import 'package:digisat_app/test/calender_test.dart';
import 'package:digisat_app/themes/my_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DigiSat',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData(),
      home: UserDashboard(),
    );
  }
}
