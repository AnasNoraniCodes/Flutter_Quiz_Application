 

import 'package:flutter/material.dart';
import 'package:flutter_quiz_application/data/data.dart';
import 'package:flutter_quiz_application/reuseble_widgets.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  final currentQuestion = questions[0]; // Pick the first question

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 80),
          ...currentQuestion.answers.map((answer) {
            return AnswerButton(
              answerText: answer,
              onTap: () {
                
                  print("User selected: $answer");
              },
            );
          })
        ],
      ),
    );
  }
}

 // ****************** QUIZ APP SUMMARY ******************

// 1️⃣ QuizQuestions Model:
//    - Stores a question as `text` and its answer options as `answers` list.

// 2️⃣ List of Questions (`questions` List):
//    - Holds multiple `QuizQuestions` objects to manage the quiz dynamically.

// 3️⃣ .map() Function:
//    - Used to loop through `answers` and dynamically create buttons for each option.

// 4️⃣ onTap() in Buttons:
//    - Handles user clicks and triggers actions like storing answers or moving to the next question.

// 5️⃣ StatefulWidget & setState():
//    - `setState()` is used to update the UI when the user selects an answer.
//    - Required because the UI changes dynamically (new questions appear).

// 6️⃣ Navigation (`Navigator.push()`):
//    - Moves from the quiz screen to the result screen after completion.
//    - `Navigator.pop()` can be used to go back if needed.

// 7️⃣ Storing User Answers:
//    - Uses a `List<String> selectedAnswers` to keep track of chosen answers.

// 8️⃣ Calculating Score:
//    - Loops through `selectedAnswers` and compares them with the correct answer (`answers[0]`).
//    - Increases `score` when the answer is correct.

// ****************** END OF SUMMARY ******************


 
 