import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
 

class StartScreen extends StatelessWidget {
  //added here required argument
  const StartScreen(this.startQuiz,  {super.key});
  //also call the viod function
  //after that called in onpressed..
  //also we can change the names..like we use startQuiz intead of switchScreen
  final VoidCallback startQuiz;

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
         Text(
            'Learn Flutter the fun way !',
            style:  GoogleFonts.lato(
                fontWeight: FontWeight.bold,
                fontSize: 24, color: const Color.fromARGB(255, 209, 209, 241)),
          ),
            const SizedBox(
            height: 30,
          ),
                  OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: const Color.fromARGB(255, 86, 41, 172),
                    ),
                    onPressed: startQuiz 
                
                     
                  , icon:const Icon(Icons.arrow_right_alt_outlined),
                   label:const Text('Start Quiz'))

        ],
      ),
    );
  }
}
