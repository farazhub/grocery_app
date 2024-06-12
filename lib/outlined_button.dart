import 'package:flutter/material.dart';

class newOutlinedButton extends StatefulWidget {
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
  State<newOutlinedButton> createState() => _newOutlinedButtonState();
}

class _newOutlinedButtonState extends State<newOutlinedButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onPressed,
      child: Text(
        widget.buttonText,
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w700,
          color: widget.buttonTextColor,
        ),
      ),
      style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(widget.buttonBackgroundColor),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          minimumSize: WidgetStateProperty.all(Size(double.infinity, 60))),
    );
  }
}
