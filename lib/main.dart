import 'package:flutter/material.dart';
import 'splash_screen.dart'; // Make sure to import your splash screen file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins-Medium.ttf',
      ),
      home: SplashScreen(), // Set the splash screen as the initial route
    );
  }
}
