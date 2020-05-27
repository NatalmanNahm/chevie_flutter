import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'CHEVIE',
                  style: GoogleFonts.acme(
                    textStyle: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.redAccent
                    )
                  ),
                ),
                Icon(
                  MaterialCommunityIcons.football,
                  color: Colors.redAccent,
                  size: 50.0,
                )
              ],
            ),

            SizedBox(height: 10.0),

            RoundedButton(color: Colors.redAccent, buttonText: 'LOGIN',
                onPress: null, topRight: 30.0, topLeft: 30.0, bottomLeft: 5.0,
                bottomRight: 5.0),
            RoundedButton(color: Colors.redAccent, buttonText: 'REGISTER',
                onPress: null, topRight: 5.0, topLeft: 5.0, bottomLeft: 30.0,
                bottomRight: 30.0)

          ],
        ),
      ),
    );
  }
}
