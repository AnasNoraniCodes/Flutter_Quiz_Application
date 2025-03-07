import 'package:flutter/material.dart';
 

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        const  Image(
            image: AssetImage(
              'assets/images/quiz-logo.png',
              
            ),
            color: Color.fromARGB(185, 255, 255, 255),
            height: 250,
          ),
        const  SizedBox(
            height: 80,
          ),
         const Text(
            'Learn Flutter the fun way !',
            style: TextStyle(
                fontSize: 20, color: Color.fromARGB(255, 209, 209, 241)),
          ),
const SizedBox(
            height: 30,
          ),
                  OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: const Color.fromARGB(255, 86, 41, 172),
                    ),
                    onPressed:  
                  () {
                    Navigator.pop(context ,true );
                  }
                  , icon: Icon(Icons.arrow_right_alt_outlined),
                   label:const Text('Start Quiz'))

        ],
      ),
    );
  }
}
