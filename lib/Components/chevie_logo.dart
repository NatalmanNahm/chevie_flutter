import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_icons/flutter_icons.dart';

class ChevieLogo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}