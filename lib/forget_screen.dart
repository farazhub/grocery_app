import 'package:flutter/material.dart';
import 'package:grocery_app/constants.dart';
import 'package:grocery_app/input_box.dart';
import 'package:grocery_app/outlined_button.dart';
import 'package:grocery_app/verify_screen.dart';

class ForgetScreen extends StatelessWidget {
  const ForgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_circle_left_outlined,
                        size: 50,
                        color: Kgreen,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Forget Password',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Image(
                        image: AssetImage('images/forgetpass.png'),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40, right: 40),
                        child: Text(
                          'Type Email Here Then We Send You Verification Code.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      newInputBox(
                          icon: Icons.mail_outline_rounded,
                          text: 'abc123@gmail.com'),
                      SizedBox(
                        height: 30,
                      ),
                      newOutlinedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => VerifyScreen(),
                              ),
                            );
                          },
                          buttonText: 'Continue',
                          buttonBackgroundColor: Kgreen,
                          buttonTextColor: Kwhite),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
