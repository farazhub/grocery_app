import 'package:flutter/material.dart';
import 'package:grocery_app/home_screen.dart';
import 'splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.light(),
            fontFamily: 'Poppins'),
        home: Scaffold(
          body: HomeScreen(),
          // body: SplashScreen(),
          ),
        );
  }
}
