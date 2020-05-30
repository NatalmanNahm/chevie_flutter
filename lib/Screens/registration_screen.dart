import 'package:cheviefutter/Screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:cheviefutter/constants.dart';
import 'package:cheviefutter/Components/rounded_button.dart';
import 'package:cheviefutter/Components/chevie_logo.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';

class RegistrationScreen extends StatefulWidget {

  static const String id = 'Registration Screen';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {

  final _auth = FirebaseAuth.instance;
  String username;
  String email;
  String password;
  String confPassword;

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
                onChanged: (value){ username = value; },
                decoration: kTextFieldDecor.copyWith(hintText: 'Name'),
              ),

              SizedBox(
                height: 18.0
              ),

              TextField(
                style: kTextFieldStyle,
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                cursorColor: Colors.white,
                onChanged: (value){ email = value; },
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
                onChanged: (value){ password = value; },
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
                onChanged: (value){ confPassword = value; },
                decoration: kTextFieldDecor.copyWith(hintText: 'Comfirm Password'),
              ),

              SizedBox(
                  height: 18.0
              ),
              RoundedButton(color: Colors.redAccent, buttonText: 'Register',
                  topRight: 30.0, topLeft: 30.0, bottomRight: 30.0,
                  bottomLeft: 30.0,
                  onPress: () async {
                    try{
                      final newUser = await _auth.
                      createUserWithEmailAndPassword(email: email, password: password);

                      if(newUser != null && password == confPassword){
                        Navigator.pushNamed(context, HomeScreen.id);
                      } else {
                        SnackBar(content:
                          Text('Password do not match, Please try again')
                        );
                      }

                    } catch (signUpError){
                      if(signUpError is PlatformException) {
                        if(signUpError.code == 'ERROR_EMAIL_ALREADY_IN_USE'){
                          SnackBar(content: Text('User already exist'));
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
