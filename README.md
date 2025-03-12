# Flutter Quiz App

## Introduction
The Flutter Quiz App is an interactive quiz application built using Flutter. It allows users to answer multiple-choice questions, view their results, and restart the quiz. The app features a dynamic question-answer system, state management, and a visually appealing UI.

## Features
- Multiple-choice questions with shuffled answers.
- State management using StatefulWidgets.
- Navigation between start, question, and results screens.
- Displays the number of correct answers at the end of the quiz.
- Option to restart the quiz.

## Technologies Used
- Flutter
- Dart
- Google Fonts (for styling)
- Material Design

## Project Structure
```
lib/
│── main.dart             # Entry point of the app
│── quiz.dart             # Main quiz logic and state management
│── start_screen.dart     # Welcome screen with start button
│── questions_screen.dart # Displays questions and answers
│── results_screen.dart   # Shows quiz results
│── question_summary.dart # Summarizes the user's answers
│── data/
│   ├── data.dart         # Stores quiz questions and answers
│── models/
│   ├── quiz_questions.dart  # Quiz question model
```

## Installation
1. Clone the repository:
   ```sh
   git clone https://github.com/yourusername/flutter_quiz_app.git
   ```
2. Navigate to the project directory:
   ```sh
   cd flutter_quiz_app
   ```
3. Install dependencies:
   ```sh
   flutter pub get
   ```
4. Run the app:
   ```sh
   flutter run
   ```

## How to Play
1. Start the quiz by clicking the **Start Quiz** button.
2. Select an answer for each question.
3. View the results at the end of the quiz.
4. Restart the quiz if desired.

## Future Enhancements
- Add a timer for each question.
- Implement different categories of quizzes.
- Store user progress and scores using local storage.
- Improve animations and UI enhancements.

## License
This project is open-source and available under the MIT License.

---
### Happy Coding! 🚀


