import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

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
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.redAccent
                  ),
                ),
                Icon(MaterialCommunityIcons.basketball, color: Colors.redAccent,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
