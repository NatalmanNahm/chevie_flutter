import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cheviefutter/Components/rounded_button.dart';

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
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/men.jpg'),
            fit: BoxFit.cover
          )
        ),
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

            RoundedButton(color: Colors.redAccent, buttonText: 'LOGIN', onPress: null),
            RoundedButton(color: Colors.redAccent, buttonText: 'REGISTER', onPress: null)

          ],
        ),
      ),
    );
  }
}
