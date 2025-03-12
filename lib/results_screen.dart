import 'package:flutter/material.dart';

import 'package:flutter_quiz_application/data/data.dart';
import 'package:flutter_quiz_application/question_summary.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatefulWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers, required this.onRestart,
     
  });

   

  final List<String> chosenAnswers;
   final VoidCallback onRestart;

  @override
  State<ResultsScreen> createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
   

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < widget.chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': widget.chosenAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectAnswers = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;
    
   

    return SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 40,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 217, 176, 236),
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                  'You have answered $numCorrectAnswers  out of $numTotalQuestions questions correctly.'),
              const SizedBox(
                height: 40,
              ),
              // list of answers
              QuestionSummary(summaryData: getSummaryData()),
              const SizedBox(
                height: 40,
              ),
                 OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color.fromARGB(255, 86, 41, 172),
              ),
              onPressed: widget.onRestart,
              icon: const Icon(Icons.refresh),
              label: const Text('Start Quiz')),

            ],
          ),
        ));
  }
}
