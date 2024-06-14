import 'package:flutter/material.dart';
import 'package:grocery_app/constants.dart';
import 'package:grocery_app/login_screen.dart';
import 'package:grocery_app/outlined_button.dart';

class ResetSucessfullyScreen extends StatelessWidget {
  const ResetSucessfullyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
                    child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('images/reset_checkmark.png'),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Congrats!',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Password Reset Sucessfull',
                style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              newOutlinedButton(
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage(),),);},
                  buttonText: 'Back',
                  buttonBackgroundColor: Kgreen,
                  buttonTextColor: Kwhite),
            ],
                    ),
                  ),
          )),
    );
  }
}
