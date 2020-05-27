import 'package:flutter/material.dart';

const kBackgroundDecor = BoxDecoration(image: DecorationImage(
  image: AssetImage('images/men.jpg'), fit: BoxFit.cover));
final kTextFieldStyle = TextStyle(fontSize: 18.0, color: Colors.white);
const kTextFieldDecor = InputDecoration(
  hintText: '',
  hintStyle: TextStyle(color: Colors.redAccent),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(30.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.redAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(30.0))
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.redAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(30.0))
  )
);