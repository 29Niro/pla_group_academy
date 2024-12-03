import 'package:flutter/material.dart';
import 'package:pla_group_academy/login_page.dart';
import 'package:pla_group_academy/my_home_page.dart';
import 'package:pla_group_academy/profile_screen.dart';
import 'package:pla_group_academy/registration_form.dart';
import 'package:pla_group_academy/settings_page.dart';
import 'package:pla_group_academy/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: LoginPage(),
      initialRoute: "/register",
      routes: {
        '/': (context) => const MyHomePage(),
        '/profile': (context) => const ProfileScreen(),
        '/settings': (context) => const SettingsPage(),
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignupPage(),
        '/register': (context) => const RegistrationForm(),
      },
    );
  }
}
