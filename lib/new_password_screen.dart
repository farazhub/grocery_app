import 'package:flutter/material.dart';
import 'package:grocery_app/constants.dart';
import 'package:grocery_app/forget_screen.dart';
import 'package:grocery_app/input_box.dart';
import 'package:grocery_app/outlined_button.dart';
import 'package:grocery_app/reset_sucessfully_screen.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

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
                        'Reset Password',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Image(
                        image: AssetImage('images/reset_password.png'),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      newInputBox(
                        icon: Icons.lock_open_rounded,
                        text: 'Enter New Password',
                        secondIcon: Icons.visibility_off_outlined,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      newInputBox(
                        icon: Icons.lock_open_rounded,
                        text: 'Re-enter New Password',
                        secondIcon: Icons.visibility_off_outlined,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      newOutlinedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ResetSucessfullyScreen(),),);
                          },
                          buttonText: 'Save',
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
