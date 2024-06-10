import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:grocery_app/login_page.dart';
import 'outlined_button.dart';
import 'constants.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 130,
              ),
              Image(
                image: AssetImage("images/scooter.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                child: Text(
                  'Get your groceries delivered in few minutes',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 23,
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(),
              ),
              newOutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  buttonText: 'Get Started',
                  buttonBackgroundColor: Kgreen,
                  buttonTextColor: Kwhite),
            ],
          ),
        ),
      ),
    );
  }
}
