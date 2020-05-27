import 'package:flutter/material.dart';
import 'package:cheviefutter/constants.dart';

class LoginScreen extends StatefulWidget {

  static const String id = 'Login Screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: kBackgroundDecor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 55.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: kTextFieldDecor.copyWith(hintText: 'Email'),
                textAlign: TextAlign.center,
                cursorColor: Colors.white,
                onChanged: (value) {},
                style: kTextFieldStyle,
              ),

              SizedBox(height: 18.0),

              TextField(
                obscureText: true,
                decoration: kTextFieldDecor.copyWith(hintText: 'Password'),
                textAlign: TextAlign.center,
                cursorColor: Colors.white,
                onChanged: (value) {},
                style: kTextFieldStyle,
              )
            ],
          ),
        ),
      ),
    );
  }
}
