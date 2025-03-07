import 'package:flutter/material.dart';
import 'package:flutter_quiz_application/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp
({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                const Color.fromARGB(255, 66, 3, 175),
                const Color.fromARGB(255, 132, 91, 202)
              ]

            )
          ),
          child: StartScreen(),
          
        ),
      ),
    );
  }
}