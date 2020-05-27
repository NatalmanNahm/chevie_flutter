import 'package:cheviefutter/Screens/login_screen.dart';
import 'package:cheviefutter/Screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:cheviefutter/Components/chevie_logo.dart';
import 'package:cheviefutter/Components/rounded_button.dart';
import 'package:cheviefutter/constants.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'Welcome Screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: kBackgroundDecor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ChevieLogo(),

            SizedBox(height: 10.0),

            RoundedButton(color: Colors.redAccent, buttonText: 'LOGIN',
                topRight: 30.0, topLeft: 30.0, bottomLeft: 5.0,
                bottomRight: 5.0, onPress: (){
                  Navigator.pushNamed(context, LoginScreen.id);
                }),
            RoundedButton(color: Colors.redAccent, buttonText: 'REGISTER',
                topRight: 5.0, topLeft: 5.0, bottomLeft: 30.0,
                bottomRight: 30.0, onPress: (){
                  //Go to the registration screen
                  Navigator.pushNamed(context, RegistrationScreen.id);
                })

          ],
        ),
      ),
    );
  }
}
