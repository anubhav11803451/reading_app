import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readingapp/screens/splash_screen.dart';


void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: splashscreen(),
    );
  }
}