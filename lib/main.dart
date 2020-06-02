import 'package:flutter/material.dart';
import 'package:cheviefutter/Screens/welcome_screen.dart';
import 'Screens/registration_screen.dart';
import 'Screens/login_screen.dart';
import 'Screens/home_screen.dart';
import 'package:bot_toast/bot_toast.dart';

void main() => runApp(Chevie());

class Chevie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: BotToastInit(),
      navigatorObservers: [BotToastNavigatorObserver()],
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        HomeScreen.id: (context) => HomeScreen(),
      },
    );
  }
}
