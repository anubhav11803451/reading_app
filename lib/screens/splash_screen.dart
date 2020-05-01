import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:readingapp/screens/intro_screen.dart';

class splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      navigateAfterSeconds: new IntroScreen(),
      image: new Image.asset("assets/logo/1.png"),
      title: Text(
        '',
        style: GoogleFonts.handlee(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white),
      ),
      loadingText: Text(
        'Hang On..!!',
        style: GoogleFonts.handlee(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.white),
      ),
      backgroundColor: Colors.black,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 115.0,
      loaderColor: Colors.deepOrangeAccent,
    );
  }
}
