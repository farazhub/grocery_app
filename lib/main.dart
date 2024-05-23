import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(useMaterial3: true, colorScheme: ColorScheme.light()),
        home: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                height: MediaQuery.of(context).size.height*0.24,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  border: Border.all(
                    color: Colors.grey,
                    width: 2,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Oooops!!!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    Text('No internet connection found, Please check your internet connection',
                      style: TextStyle(

                      ),
                      ),

                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
