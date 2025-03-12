import 'package:flutter/material.dart';


class AnswerButton extends StatelessWidget {
   const AnswerButton( {super.key, required this.answerText, required this.onTap});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
      
            padding:const EdgeInsets.only(
              left: 40,
              top: 20,
              right: 40,
              bottom: 20
            ),
            backgroundColor: const Color.fromARGB(255, 157, 172, 247),
            foregroundColor: const Color.fromARGB(255, 14, 2, 39),
                                 
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
              side: BorderSide.none
            ),
            ),
        child: Text(answerText,textAlign: TextAlign.center),
      ),
    );
  }
}