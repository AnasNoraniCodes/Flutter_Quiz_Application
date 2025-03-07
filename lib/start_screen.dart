import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Image(
          image: 
           AssetImage('assets/images/quiz-logo.png',),
          height: 250,)
          , Text('Learn Flutter the fun way !')
            ],
      ),
    );
  }
}