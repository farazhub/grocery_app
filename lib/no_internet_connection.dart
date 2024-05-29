import 'constants.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';

class No_internet_connection extends StatelessWidget {
  No_internet_connection();

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
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: buildOutlinedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => No_internet_connection()),
                      );
                    },
                    buttonColor: Kgreen,
                    buttonTextColor: Kwhite,
                  ),
                ),
                buildOutlinedButton(
                  onPressed: () {},
                  buttonColor: Kwhite,
                  buttonTextColor: Kgreen,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class buildOutlinedButton extends StatelessWidget {
  buildOutlinedButton(
      {required this.onPressed,
      required this.buttonColor,
      required this.buttonTextColor});
  Function onPressed;
  Color? buttonColor;
  Color? buttonTextColor;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed(),
      child: Text(
        'buttonText',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: buttonTextColor,
        ),
      ),
    );
  }
}
