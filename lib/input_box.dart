import 'package:flutter/material.dart';

class newInputBox extends StatelessWidget {

  newInputBox({required this.icon, required this.text, this.secondIcon});
  IconData icon;
  IconData? secondIcon;
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(13),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(
            width: 10,
          ),
          Text(text,
            style: TextStyle(
              fontWeight: FontWeight.w300,
              color: Color(0xFF797979),
            ),),
          Spacer(),
          Icon(secondIcon,),
        ],
      ),
    );
  }
}