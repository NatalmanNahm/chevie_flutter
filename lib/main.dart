import 'package:flutter/material.dart';
import 'package:cheviefutter/Screens/welcome_screen.dart';
import 'Screens/registration_screen.dart';
import 'Screens/login_screen.dart';

void main() => runApp(Chevie());

class Chevie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        LoginScreen.id: (context) => LoginScreen(),
      },
    );
  }
}
