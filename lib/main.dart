import 'package:flutter/material.dart';
import 'package:pla_group_academy/custom_listview.dart';
import 'package:pla_group_academy/horizontal_listview.dart';
import 'package:pla_group_academy/loading_listview.dart';
import 'package:pla_group_academy/login_page.dart';
import 'package:pla_group_academy/my_home_page.dart';
import 'package:pla_group_academy/profile_screen.dart';
import 'package:pla_group_academy/registration_form.dart';
import 'package:pla_group_academy/settings_page.dart';
import 'package:pla_group_academy/signup_page.dart';
import 'package:pla_group_academy/simple_listview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: LoginPage(),
      initialRoute: "/signup",
      routes: {
        '/': (context) => const MyHomePage(),
        '/profile': (context) => const ProfileScreen(),
        '/settings': (context) => const SettingsPage(),
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignupPage(),
        '/register': (context) => const RegistrationForm(),
        '/simple-list': (context) => const SimpleListview(),
        '/custom-list': (context) => CustomListview(),
        '/horizontal-list': (context) => const HorizontalListview(),
        '/loading-list': (context) => const LoadingListview(),
      },
    );
  }
}
