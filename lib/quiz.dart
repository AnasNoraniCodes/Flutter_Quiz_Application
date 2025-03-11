import 'package:flutter/material.dart';
import 'package:flutter_quiz_application/questions_screen.dart';
import 'package:flutter_quiz_application/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  //first created a list of empty string .
  final List<String> selectedAnswer = [];
 //fucntion that wil add answer to list
  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);
  }

//     //here we initilized widgets first
//   Widget? activeScreen;
//   @override

//   //then call initstate for appling build method
//   void initState() {

//     activeScreen=StartScreen(switchScreen,); // add here an argument for link it .
//     super.initState();
//   }
//    // added a function for switching

//   void switchScreen() {
//     setState(() {
//       activeScreen = 'questionScreen';
//     });
//   }

// here we initilized activeScreen as string.
//advantage is we dont need to initstate here
  var activeScreen = 'StartScreen';
  // added a function for switching

  void switchScreen() {
    setState(() {
      activeScreen = 'questionScreen';
    });
  }

  @override
  Widget build(BuildContext context) {
    //added a widget then check the condition...
    // if condition met  screenWidget = const QuestionsScreen .
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questionScreen') {
      screenWidget =  QuestionsScreen(onSelectedAnswer: chooseAnswer,); // passed a chooseAnswer as value to Screen.
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Color.fromARGB(255, 82, 2, 114),
                Color.fromARGB(255, 72, 11, 179)
              ])),
          child: screenWidget,
        ),
      ),
    );
  }
}

// Code is written in different places to keep it structured, readable, and maintainable.
// Logic goes inside functions, while UI stays inside build().
// If something changes the UI → put it inside setState() inside State class.
// If something needs to be reusable → pass it using VoidCallback.