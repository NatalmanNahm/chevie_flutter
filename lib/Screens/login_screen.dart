import 'package:bot_toast/bot_toast.dart';
import 'package:cheviefutter/Screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:cheviefutter/constants.dart';
import 'package:cheviefutter/Components/rounded_button.dart';
import 'package:cheviefutter/Components/chevie_logo.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {

  static const String id = 'Login Screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  String email;
  String password;
  final _auth = FirebaseAuth.instance;
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
                keyboardType: TextInputType.emailAddress,
                decoration: kTextFieldDecor.copyWith(hintText: 'Email'),
                textAlign: TextAlign.center,
                cursorColor: Colors.white,
                onChanged: (value) {email = value;},
                style: kTextFieldStyle,
              ),

              SizedBox(height: 18.0),

              TextField(
                obscureText: true,
                decoration: kTextFieldDecor.copyWith(hintText: 'Password'),
                textAlign: TextAlign.center,
                cursorColor: Colors.white,
                onChanged: (value) {password = value;},
                style: kTextFieldStyle,
              ),

              SizedBox(height: 18.0),

              RoundedButton(color: Colors.redAccent, buttonText: 'Login',
                  topRight: 30.0, topLeft: 30.0, bottomRight: 30.0,
                  bottomLeft: 30.0,
                  onPress: () async {
                    try{
                      final newUser = await _auth.
                      signInWithEmailAndPassword(email: email, password: password);

                      if(newUser != null){
                        Navigator.pushNamed(context, HomeScreen.id);
                      }

                    } catch (signInError){
                      print(signInError);
                      if(signInError is PlatformException){
                        if(signInError.code == 'ERROR_WRONG_PASSWORD') {
                          BotToast.showText(text: 'Wrong Password!');
                        } else if(signInError.code == 'ERROR_INVALID_EMAIL'){
                          BotToast.showText(text: 'Invalid Email!');
                        }
                      }
                    }
                  })

            ],
          ),
        ),
      ),
    );
  }
}
