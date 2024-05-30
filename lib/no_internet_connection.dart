import 'constants.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';

class No_internet_connection extends StatelessWidget {
  No_internet_connection();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.light(),
          fontFamily: 'Poppins'),
      home: Scaffold(
        body: Center(
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
              crossAxisAlignment: CrossAxisAlignment.stretch,
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
                  image: AssetImage("images/bro.png"),
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
                newOutlinedButton(
                  buttonText: "Try Again",
                  buttonBackgroundColor: Kgreen,
                  buttonTextColor: Colors.white,
                ),
                newOutlinedButton(
                  buttonText: "Cancel",
                  buttonBackgroundColor: Colors.white,
                  buttonTextColor: Colors.black,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class newOutlinedButton extends StatelessWidget {
  newOutlinedButton(
      {required this.buttonText,
      required this.buttonBackgroundColor,
      required this.buttonTextColor});

  String buttonText;
  Color buttonBackgroundColor;
  Color buttonTextColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        buttonText,
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w700,
          color: buttonTextColor,
        ),
      ),
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(buttonBackgroundColor),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
//
// class buildOutlinedButton extends StatelessWidget {
//   buildOutlinedButton(
//       {required this.onPressed,
//       required this.buttonText,
//       required this.buttonColor,
//       required this.buttonTextColor});
//   Function onPressed;
//   String buttonText;
//   Color? buttonColor;
//   Color? buttonTextColor;
//   @override
//   Widget build(BuildContext context) {
//     return OutlinedButton(
//       onPressed: onPressed(),
//       child: Text(
//         buttonText,
//         style: TextStyle(
//           fontSize: 22,
//           fontWeight: FontWeight.w700,
//           color: buttonTextColor,
//         ),
//       ),
//     );
//   }
// }
// buildOutlinedButton(
//     onPressed: () {},
//     buttonText: "Try Again",
//     buttonColor: Kgreen,
//     buttonTextColor: Kwhite)
