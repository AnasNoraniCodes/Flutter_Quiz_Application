import 'package:flutter/material.dart';
import 'package:flutter_quiz_application/questions_screen.dart';
import 'package:flutter_quiz_application/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
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
      screenWidget = const QuestionsScreen();
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
    ;
  }
}
