import 'dart:ffi';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Image(
                image: AssetImage("images/scooter.png"),
              ),
              Container(
                width: 280,
                child: Text(
                  'Get your groceries delivered in few minutes',
                  textAlign: TextAlign.center,
                  style:
                  TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 23,
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Get Started',
                ),
                style: TextButton.styleFrom(
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
