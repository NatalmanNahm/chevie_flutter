import 'package:flutter/material.dart';
import 'package:cheviefutter/constants.dart';
import 'package:cheviefutter/Components/rounded_button.dart';
import 'package:cheviefutter/Components/chevie_logo.dart';

class RegistrationScreen extends StatefulWidget {

  static const String id = 'Registration Screen';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
              ChevieLogo(),

              SizedBox(height: 10.0),

              TextField(
                style: kTextFieldStyle,
                keyboardType: TextInputType.text,
                textAlign: TextAlign.center,
                cursorColor: Colors.white,
                onChanged: (value){},
                decoration: kTextFieldDecor.copyWith(hintText: 'Username'),
              ),

              SizedBox(
                height: 18.0
              ),

              TextField(
                style: kTextFieldStyle,
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                cursorColor: Colors.white,
                onChanged: (value){},
                decoration: kTextFieldDecor.copyWith(hintText: 'Email'),
              ),

              SizedBox(
                  height: 18.0
              ),

              TextField(
                style: kTextFieldStyle,
                obscureText: true,
                textAlign: TextAlign.center,
                cursorColor: Colors.white,
                onChanged: (value){},
                decoration: kTextFieldDecor.copyWith(hintText: 'Password'),
              ),

              SizedBox(
                  height: 18.0
              ),

              TextField(
                style: kTextFieldStyle,
                obscureText: true,
                textAlign: TextAlign.center,
                cursorColor: Colors.white,
                onChanged: (value){},
                decoration: kTextFieldDecor.copyWith(hintText: 'Comfirm Password'),
              ),

              SizedBox(
                  height: 18.0
              ),
              RoundedButton(color: Colors.redAccent, buttonText: 'Register',
                  onPress: null, topRight: 30.0, topLeft: 30.0,
                  bottomRight: 30.0, bottomLeft: 30.0)
            ],
          ),
        ),
      ),
    );
  }
}
