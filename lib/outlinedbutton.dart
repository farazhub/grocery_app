import 'package:flutter/material.dart';

class newOutlinedButton extends StatelessWidget {
  newOutlinedButton(
      {required this.onPressed,
      required this.buttonText,
      required this.buttonBackgroundColor,
      required this.buttonTextColor});

  final VoidCallback onPressed;
  String buttonText;
  Color buttonBackgroundColor;
  Color buttonTextColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
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
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          minimumSize: WidgetStateProperty.all(Size(double.infinity, 60))),
    );
  }
}
