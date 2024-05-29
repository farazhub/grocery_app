import 'dart:ffi';
import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';
import 'constants.dart';
import 'package:flutter/material.dart';

class No_internet_connection extends StatelessWidget {
  const No_internet_connection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        height: 600,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 320,
                ),
                Icon(
                  Icons.cancel,
                  color: Colors.grey,
                ),
              ],
            ),
            Image(
              image: AssetImage('images/no-internet.png'),
            ),
            Text(
              'Oooops!!!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            Text(
              'No internet connection found, Please check your internet connection',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Color(0xFF797979),
                fontSize: 13,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: buildOutlinedButton(buttonColor: Kgreen, buttonTextColor: Kwhite,),
                ),
                buildOutlinedButton(buttonColor: Kwhite, buttonTextColor: Kgreen,),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class buildOutlinedButton extends StatelessWidget {
   buildOutlinedButton({required this.buttonColor, required this.buttonTextColor});
   // String buttonText;
   Color? buttonColor;
   Color? buttonTextColor;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
                onPressed: () {},
                child: Text(
                  'buttonText',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: buttonTextColor,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: Colors.grey,
                  ),
                ),
              );
  }
}

// ButtonStyle(
// backgroundColor: WidgetStatePropertyAll(buttonColor),
// shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
// RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(8),
// ),
// ),
// ),