import 'package:flutter/material.dart';
import 'package:grocery_app/constants.dart';
import 'package:grocery_app/outlined_button.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'What is Your Location?',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'We need to know your location in order to suggest you nearby services',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              newOutlinedButton(onPressed: (){}, buttonText: 'Allow Location Access', buttonBackgroundColor: Kgreen, buttonTextColor: Kwhite),
              SizedBox(
                height: 15,
              ),
              newOutlinedButton(onPressed: (){}, buttonText: 'Enter Location Manually', buttonBackgroundColor: Kwhite, buttonTextColor: Kgreen),
            ],
          ),
        ),
      ),
    );
  }
}
